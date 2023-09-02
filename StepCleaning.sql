DROP VIEW if EXISTS BeginCleaning;

CREATE VIEW BeginCleaning as
SELECT substr(creationDate,1,10) as theDate, value 
FROM StepCount;

DROP TABLE if EXISTS CleanedSteps;

CREATE TABLE CleanedSteps as
SELECT DATE(theDate) as day, SUM(value) as dailySteps
FROM BeginCleaning
WHERE day >= '2017-08-21'
GROUP BY day