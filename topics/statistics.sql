SET STATISTICS IO ON;

SELECT Id, DisplayName, Age
FROM dbo.Users
WHERE LastAccessDate > '3014/07/01'
ORDER BY LastAccessDate;

SELECT Id, DisplayName, Age
FROM dbo.Users
WHERE LastAccessDate > '2014/07/01'
ORDER BY LastAccessDate;

SELECT Id, DisplayName, Age
FROM dbo.Users WITH (INDEX = IX_LastAccessDate_Id)
WHERE LastAccessDate > '2014/07/01'
ORDER BY LastAccessDate;

DBCC SHOW_STATISTICS('dbo.Users', 'IX_LastAccessDate_Id')

CREATE INDEX
IX_LastAccessDate_Id
ON dbo.Users(LastAccessDate, Id)

SELECT Id, DisplayName, Age
FROM dbo.Users
WHERE LastAccessDate >= '2014/07/01'
    AND LastAccessDate < '2014/08/01'
ORDER BY LastAccessDate;

SELECT Id, DisplayName, Age
FROM dbo.Users
WHERE YEAR(LastAccessDate) = 2014
    AND MONTH(LastAccessDate) = 7
ORDER BY LastAccessDate;

SELECT Id, DisplayName, Age
FROM dbo.Users WITH (INDEX = IX_LastAccessDate_Id)
WHERE YEAR(LastAccessDate) = 2014
    AND MONTH(LastAccessDate) = 7
ORDER BY LastAccessDate;