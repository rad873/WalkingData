/*trends*/
SELECT *, round(avg(dailySteps))
FROM CleanedSteps;
/* = 5503*/

/*overaverage*/
DROP VIEW IF EXISTS steps_over_average;

CREATE VIEW steps_over_average AS
SELECT * 
FROM CleanedSteps
WHERE dailySteps > 5503
