USE proph_expertise;

/*
6. Скрипты характерных выборок
*/

-- работники и их профессиональные ограничения (у кого есть)
SELECT 
	w.id, 
	CONCAT_WS(' ', w.lastname, w.firstname) AS workers,
	GROUP_CONCAT(dwc.name SEPARATOR '; ') AS restrictions
FROM workers w
LEFT JOIN prof_restrictions pr ON pr.worker_id = w.id
LEFT JOIN dangerous_working_conditions dwc ON dwc.id = pr.dangerous_id
GROUP BY w.id;

-- список недопущенных по результатам профосмотра - если вредные и опасные условия рабочего 
-- места совпадают с профессиональными ограничениями работника
SELECT 
	w.id, 
	CONCAT_WS(' ', w.lastname, w.firstname) AS not_allowed, 
	dwc.name AS because_of
FROM prof_restrictions pr 
JOIN workers w ON w.id = pr.worker_id
JOIN dangerous_conditions_of_workers dcw ON dcw.dangerous_id = pr.dangerous_id AND dcw.worker_id = pr.worker_id
JOIN dangerous_working_conditions dwc ON dwc.id = dcw.dangerous_id
ORDER BY w.id;

-- количество работников старшей возрастной группы (>40, тк их достаточно много) по цехам 
SELECT
	w.department_id,
	d.name,
	COUNT(w.id) AS total
FROM workers w
JOIN med_profiles mp ON mp.worker_id = w.id
JOIN departments d ON d.id = w.department_id 
WHERE TIMESTAMPDIFF(YEAR, mp.birthday, NOW()) >= 40
GROUP BY w.department_id;

-- стоимость профосмотра для работников старше 40 сгруппированных по полу
SELECT 
	mp.gender,
	COUNT(DISTINCT mp.worker_id) AS total,
	ROUND(SUM(p.price), 2) AS total_cost,
	ROUND(SUM(p.price)/COUNT(DISTINCT mp.worker_id), 2) AS avg_cost
FROM med_profiles mp
LEFT JOIN expertise_sheets es ON es.worker_id = mp.worker_id
LEFT JOIN procedures p ON p.id = es.procedure_id
WHERE TIMESTAMPDIFF(YEAR, mp.birthday, NOW()) >= 40
GROUP BY mp.gender
ORDER BY price DESC;

-- список работников, непрошедших профосмотр в срок (больше 1 г. 1 мес. с последнего профосмотра)
SELECT 
	d.name AS department,
	w.lastname,
	CONCAT(d.department_number, w.personnel_number) AS pers_number,
	p.name AS `position`,
	DATE(IFNULL(mp.last_passing_date, w.created_at)) AS last_passing
FROM med_profiles mp
JOIN workers w ON w.id = mp.worker_id
JOIN departments d ON d.id = w.department_id
JOIN positions p ON p.id = w.position_id
-- если last_passing_date NULL, то срок отсчитывается c даты создания в workers
WHERE (DATE_ADD(IFNULL(mp.last_passing_date, w.created_at), INTERVAL 1.1 YEAR_MONTH) < CURRENT_DATE())
	AND mp.state_expertise = 'не пройден'
ORDER BY department;

-- нагрузка на цеховых терапевтов
SELECT
	dt.med_worker_id,
	w1.lastname AS therapist, 
	dt.department_id,
	COUNT(w.id) AS workers
FROM departments_therapist dt
LEFT JOIN workers w ON w.department_id = dt.department_id
JOIN workers w1 ON w1.id = dt.med_worker_id 
GROUP BY dt.med_worker_id, dt.department_id
WITH ROLLUP;
