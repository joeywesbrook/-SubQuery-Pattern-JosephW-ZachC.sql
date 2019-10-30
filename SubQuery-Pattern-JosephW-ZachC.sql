 /* Query- by Joseph Wesbrook & Zach Cramer and AVG Sub-Querie */
SELECT HoursWorked, EmployeeNumber, ProjectID
FROM assignment
WHERE HoursWorked >
 (SELECT AVG(HoursWorked)
 FROM assignment)
ORDER BY HoursWorked;
