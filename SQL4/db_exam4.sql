--���K4-DB���K���



--1.�C���f�b�N�X�̍쐬

--1--
CREATE INDEX m_name ON major(major_name);
--2--
CREATE INDEX s_name ON student(student_name);
--3--
CREATE INDEX m_index ON student(grade, student_name);
 


--2.�r���[�̍쐬
CREATE VIEW v_student AS
SELECT s.student_id, s.student_name, s.hometown, m.major_name
FROM student s
INNER JOIN major m
ON s.major_id = m.major_id
WHERE hometown != '����'
ORDER BY major_name;



--3.�}�e���A���Y�h�E�r���[
CREATE MATERIALIZED VIEW mv_student AS
SELECT s.student_id, s.student_name, s.hometown, m.major_name
FROM student s
INNER JOIN major m
ON s.major_id = m.major_id
WHERE hometown != '����'
ORDER BY major_name;



--4.�t�@���N�V����

--�t�@���N�V�����쐬
CREATE OR REPLACE FUNCTION func(price decimal) RETURNS integer
 LANGUAGE plpgsql AS $function$
declare

begin
    return trunc(price * 1.1, 0);
end;
$function$;

--�t�@���N�V�������s
SELECT *,func(amount) AS �J�������Ȃ�
from sales;



--5.�V�[�P���X
CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(50));

--id��101����A�ԂɂȂ�悤�ݒ�
SELECT SETVAL('users_id_seq', 101 , false);


