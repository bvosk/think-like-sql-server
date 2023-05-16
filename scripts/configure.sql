-- Set the cost threshold for parallelism high to simplify query plans
-- https://www.brentozar.com/archive/2019/10/why-query-plans-can-look-different-on-different-servers/
-- https://learn.microsoft.com/en-us/sql/database-engine/configure-windows/configure-the-cost-threshold-for-parallelism-server-configuration-option?view=sql-server-ver16
EXEC sp_configure 'show advanced options', 1;
GO
RECONFIGURE
GO
EXEC sp_configure 'cost threshold for parallelism', 1000;
GO
RECONFIGURE
GO

-- Set compatibility level to 150
-- New compatibility levels mess up some of these examples!
ALTER DATABASE StackOverflow
SET COMPATIBILITY_LEVEL = 150