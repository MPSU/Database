-- Использовался как черновик

-- select field_name from field 
-- select * from Students_group

select field_name, structural_unit_id from field
where professor_id = '81007'

--select * from students_group 
--where structural_unit_number= 2



select * from students_group 
where structural_unit_number = 1

-- УЧИТЕЛЬ
-- Список дисциплин
SELECT field_name, structural_unit_id 
FROM field 
WHERE professor_id = :id

-- Список оценок по дисциплине для данной группы
SELECT student.surname, Field_comprehension.mark, field.field_name, student.students_group_number
FROM Student LEFT OUTER JOIN Field_comprehension
ON Field_comprehension.student_id = Student.student_id
LEFT OUTER JOIN field ON Field_comprehension.field = field.field_id
WHERE student.students_group_number = 'ИВТ-41' and field.field_name = 'Электротехника'

-- (-_-)


SELECT Employment.structural_unit_number, Field.field_name, Professor.surname, Professor.name,
Student.students_group_number, Professor.professor_id, Structural_unit.full_title
FROM field
LEFT OUTER JOIN Professor
ON field.professor_id = Professor.professor_id 
LEFT OUTER JOIN Employment
ON Employment.professor_id = Professor.professor_id
LEFT OUTER JOIN Field_comprehension
ON Field_comprehension.field = field.field_id
LEFT OUTER JOIN Student
ON Field_comprehension.student_id = Student.student_id
LEFT OUTER JOIN Structural_unit
ON Field.structural_unit_id = Structural_unit.structural_unit_id
-- WHERE structural_unit_number = 1
-- AND Professor.professor_id = 81007
GROUP BY Employment.structural_unit_number, Field.field_name, Professor.surname, Professor.name, 
          Student.students_group_number, Structural_unit.full_title, Professor.professor_id

