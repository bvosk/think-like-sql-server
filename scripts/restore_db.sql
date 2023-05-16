USE master
IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = N'StackOverflow')
BEGIN
    CREATE DATABASE StackOverflow
    ON ( NAME = StackOverflow2010, FILENAME = '/StackOverflow2010/StackOverflow2010.mdf' )
    LOG ON ( NAME = StackOverflow2010_Log, FILENAME = '/StackOverflow2010/StackOverflow2010_log.ldf')
    FOR ATTACH
END