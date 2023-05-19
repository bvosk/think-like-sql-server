SET STATISTICS IO ON;

SELECT Id
FROM dbo.Users
WHERE LastAccessDate > '2014/07/01';

CREATE INDEX
IX_LastAccessDate_Id
ON dbo.Users(LastAccessDate, Id)

SELECT Id
FROM dbo.Users
WHERE LastAccessDate > '2014/07/01'
ORDER BY LastAccessDate;

SELECT Id
FROM dbo.Users WITH (INDEX = 1)
WHERE LastAccessDate > '2014/07/01'
ORDER BY LastAccessDate;

SELECT Id
FROM dbo.Users
WHERE LastAccessDate > '1800/07/01'
ORDER BY LastAccessDate;

SELECT TOP 10 *
FROM dbo.Users;