USE proph_expertise;

/*
7. Представления
*/

-- количество дней на профосмотр для каждого цеха
-- так как всего 40 работников, то профосмотры планируются на месяц
-- 20 рабочих дней в текущем месяце
DROP VIEW IF EXISTS v_days_for_exp;
CREATE OR REPLACE VIEW v_days_for_exp AS
SELECT 
	d.id, 
	d.name, 
	COUNT(w.id) AS workers, 
	ROUND(COUNT(w.id)/((SELECT * FROM (SELECT COUNT(id) FROM workers) AS total)/20)) as days 
FROM workers w
RIGHT JOIN departments d ON d.id = w.department_id
GROUP BY department_id
WITH ROLLUP;

SELECT name, workers, days FROM v_days_for_exp;

-- список работников медсанчасти
DROP VIEW IF EXISTS v_med_workers;
CREATE OR REPLACE VIEW v_med_workers AS
SELECT 
	w.id AS worker_id,
	w.firstname,
	w.lastname,
	CONCAT(d.department_number, w.personnel_number) AS pers_number,
	w.position_id,
	p.name AS `position`
FROM workers w
JOIN departments d ON d.id = w.department_id
JOIN positions p ON p.id = w.position_id
WHERE d.name = 'медсанчасть'
ORDER BY p.name, w.lastname;

SELECT firstname,  lastname, pers_number, `position` FROM v_med_workers;

/*
8. Хранимые процедуры и триггеры
*/

-- допустим, показатели для отчётов посчитаны, отправлены в архив, тогда - 
-- очистка expertise_sheets для всех работников, кто успешно прошёл профосмотр
DELIMITER //
DROP PROCEDURE IF EXISTS sp_clean_expertise_sheets//
CREATE PROCEDURE sp_clean_expertise_sheets()  
BEGIN

DELETE FROM expertise_sheets
WHERE id IN (SELECT id FROM (SELECT es.id FROM
				med_profiles mp 
			JOIN expertise_sheets es ON es.worker_id = mp.worker_id 
			WHERE mp.state_expertise = 'пройден') AS del_id);

END//
DELIMITER ;

CALL sp_clean_expertise_sheets();

-- вставка мед.процедур в expertise_sheets для работников цеха, проходящих профосмотр
-- реализовано добавление только 3-х мед. процедур
DELIMITER //
DROP PROCEDURE IF EXISTS sp_forming_expertise_sheets//
CREATE PROCEDURE sp_forming_expertise_sheets (IN for_department_id BIGINT)  
BEGIN
	DECLARE set_worker_id BIGINT;  -- переменные для курсора
	DECLARE is_end INT DEFAULT 0;

	DECLARE cur_workers CURSOR FOR 
		SELECT id FROM workers WHERE department_id = for_department_id AND is_fired = 0;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_end = 1;

	IF for_department_id NOT IN (SELECT id FROM departments) THEN  -- проверка, существует ли цех с id
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Incorrected id';
    END IF;

	OPEN cur_workers;

		cycle: LOOP
    	FETCH cur_workers INTO set_worker_id;
    		IF is_end THEN LEAVE cycle;
    		END IF;

-- добавление мед. процедур для работника по условиям
    		SET @values_for_insert = CONCAT('INSERT INTO expertise_sheets (worker_id, procedure_id) VALUES (', set_worker_id, ',1)');

    		IF (SELECT gender FROM med_profiles WHERE worker_id = set_worker_id) = 'f' THEN
    			SET @values_for_insert = CONCAT(@values_for_insert, ',(', set_worker_id, ',5)');
    		END IF;

    		IF (SELECT worker_id FROM dangerous_conditions_of_workers
    			WHERE worker_id = set_worker_id AND dangerous_id = 6) IS NOT NULL THEN
    			SET @values_for_insert = CONCAT(@values_for_insert, ',(', set_worker_id, ',6)');
    		END IF;

    		SET @values_for_insert = CONCAT(@values_for_insert, ';');

    		PREPARE insert_values FROM @values_for_insert;  -- и динамический запрос на вставку для работника
    		EXECUTE insert_values;
			DEALLOCATE PREPARE insert_values;

  		END LOOP cycle;
  	CLOSE cur_workers;

END//
DELIMITER ;

-- вызов процедуры
CALL sp_forming_expertise_sheets(11); -- несуществующий id
CALL sp_forming_expertise_sheets(1);
CALL sp_forming_expertise_sheets(4);


-- триггер проверяет, является ли работник с med_worker_id терапевтом из медсанчасти,
-- если нет, запрещает вставку
DELIMITER //
DROP TRIGGER IF EXISTS check_med_worker_id_before_insert//
CREATE TRIGGER check_med_worker_id_before_insert BEFORE INSERT ON departments_therapist
FOR EACH ROW
BEGIN
    IF NEW.med_worker_id NOT IN (SELECT worker_id FROM v_med_workers WHERE position = 'терапевт') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT Canceled. Insert the therapist id.';
    END IF;
END//
DELIMITER ;

-- проверка триггера
INSERT INTO departments_therapist (med_worker_id, department_id) VALUES
	(32, 1);  -- мед. работник, но не терапевт
INSERT INTO departments_therapist (med_worker_id, department_id) VALUES
	(40, 1);  -- терапевт


-- триггер вставляет дату прохождения мед. процедуры в expertise_sheets, если она не указана
DELIMITER //
DROP TRIGGER IF EXISTS insert_date_of_approved_before_update//
CREATE TRIGGER insert_date_of_approved_before_update BEFORE UPDATE ON expertise_sheets
FOR EACH ROW
BEGIN
    IF NEW.is_approved = 1 AND NEW.date_of_approved IS NULL THEN
        SET NEW.date_of_approved = CURRENT_DATE;
    END IF;
END//
DELIMITER ;

-- проверка
UPDATE expertise_sheets
SET is_approved = 1
WHERE id = 1;
