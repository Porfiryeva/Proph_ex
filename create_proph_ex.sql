/*
1. Описание
База данных предназначена для хранения данных отделения профосмотров медсанчасти. Содержит
информацию о работниках, вредных и опасных условиях труда, содержании профосмотров.
Описываются только профосмотры без дополнительных комиссий и справок, только текущего года 
без архивных данных.
Позволяет сформировать:
- списки на профосмотры по цехам;
- содержание мед. процедур для обходных листов;
- списки прошедших и непрошедших в срок, допущенных, допущенных с ограничениями или 
  недопущенных к работе;
- данные для подсчёта нагрузки отделения;
- данные для подсчёта стоимости профосмотров и пр.
*/

DROP DATABASE IF EXISTS proph_expertise;
CREATE DATABASE proph_expertise;

USE proph_expertise;

-- справочник по цехам
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
	id SERIAL PRIMARY KEY,
	department_number CHAR(3) NOT NULL UNIQUE COMMENT 'номер цеха' CHECK (department_number REGEXP '[[:digit:]]{3}'),
	name VARCHAR(100),
	created_at DATETIME DEFAULT NOW()
);

-- справочник по должностям
DROP TABLE IF EXISTS positions;
CREATE TABLE positions (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) COMMENT 'должность',
	created_at DATETIME DEFAULT NOW()
);

-- список работников
DROP TABLE IF EXISTS workers;
CREATE TABLE workers (
	id SERIAL PRIMARY KEY,
	firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамилия',
	department_id BIGINT UNSIGNED NOT NULL, -- это здесь вместо первых трёх цифр таб номера
    personnel_number CHAR(3) NOT NULL COMMENT 'персональная часть табельного номера' CHECK (personnel_number REGEXP '[[:digit:]]{3}'),
    position_id BIGINT UNSIGNED NOT NULL COMMENT 'занимаемая должность',
    phone BIGINT,
    address VARCHAR(200),
	is_fired BIT DEFAULT b'0' COMMENT 'уволен',
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
	UNIQUE unique_number_idx(department_id, personnel_number),
	FOREIGN KEY (department_id) REFERENCES departments(id) ON UPDATE CASCADE ON DELETE RESTRICT,  
-- те если сокращается должность - для всех работников либо перевод на другую, либо увольнение
	FOREIGN KEY (position_id) REFERENCES positions(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- список профвредностей
DROP TABLE IF EXISTS dangerous_working_conditions;
CREATE TABLE dangerous_working_conditions (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) COMMENT 'вредные и опасные условия труда',
	created_at DATETIME DEFAULT NOW()
);

-- медицинский профиль
DROP TABLE IF EXISTS med_profiles;
CREATE TABLE med_profiles (
	worker_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
    diagnosis VARCHAR(10) COMMENT 'Основной диагноз, код по МКБ10',
    health_group TINYINT(1) UNSIGNED CHECK (health_group BETWEEN 1 AND 4),
    updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
	state_expertise ENUM('не пройден', 'продлён', 'пройден'),
	last_passing_date DATE,
    FOREIGN KEY (worker_id) REFERENCES workers(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- проф. ограничения
DROP TABLE IF EXISTS prof_restrictions;
CREATE TABLE prof_restrictions (
	worker_id BIGINT UNSIGNED NOT NULL,
-- какие вредные и опасные условия запрещены для работника
	dangerous_id BIGINT UNSIGNED NOT NULL COMMENT 'Проф. ограничение',
	created_at DATETIME DEFAULT NOW(),
	PRIMARY KEY (worker_id, dangerous_id),
	FOREIGN KEY (worker_id) REFERENCES workers(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (dangerous_id) REFERENCES dangerous_working_conditions(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- индивидуальные вредности
DROP TABLE IF EXISTS dangerous_conditions_of_workers;
CREATE TABLE dangerous_conditions_of_workers (
	worker_id BIGINT UNSIGNED NOT NULL,
-- какие вредные и опасные условия присутствуют у работника
	dangerous_id BIGINT UNSIGNED NOT NULL COMMENT 'Проф. вредность',
	created_at DATETIME DEFAULT NOW(),
	PRIMARY KEY (worker_id, dangerous_id),  
	FOREIGN KEY (worker_id) REFERENCES workers(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (dangerous_id) REFERENCES dangerous_working_conditions(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- справочник по манипуляциям/процедурам/исследованиям
-- в содержании - basic + доп, которые назначаются в зависимости от возраста, пола, вредностей, периодичности и пр.
DROP TABLE IF EXISTS procedures;
CREATE TABLE procedures (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) COMMENT 'анализы, отметки специалистов, дополнительные исследования',
	price DECIMAL (11,2) COMMENT 'стоимость',
	created_at DATETIME DEFAULT NOW()
);

-- содержание профосмотра для работников - на его базе формирование обходного листа
DROP TABLE IF EXISTS expertise_sheets;
CREATE TABLE expertise_sheets (
	id SERIAL PRIMARY KEY, -- одна процедура м.б. назначена несколько раз, если срок действия истёк, или надо пересдавать по к-л причине
	worker_id BIGINT UNSIGNED NOT NULL,
	procedure_id BIGINT UNSIGNED NOT NULL,
	is_approved BIT DEFAULT b'0' COMMENT 'пройдено', 
 	date_of_approved DATE,
	FOREIGN KEY (worker_id) REFERENCES workers(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (procedure_id) REFERENCES procedures(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- список цеховых терапевтов
	DROP TABLE IF EXISTS departments_therapist;
	CREATE TABLE departments_therapist (
	id SERIAL PRIMARY KEY,
	med_worker_id BIGINT UNSIGNED NOT NULL,
	department_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (med_worker_id) REFERENCES workers(id) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (department_id) REFERENCES departments(id) ON UPDATE CASCADE ON DELETE CASCADE
);
