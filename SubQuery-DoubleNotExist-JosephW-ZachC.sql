/* Query- by Joseph Wesbrook and Zach Cramer and Double Not Exist Sub-Querie */
SELECT DISTINCT ProjectID
FROM project
WHERE NOT EXISTS (
	SELECT *
	FROM assignment
		WHERE NOT EXISTS (
		SELECT *
		FROM assignment
		WHERE assignment.ProjectID = project.ProjectID));
