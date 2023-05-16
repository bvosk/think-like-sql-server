#!/bin/bash
/opt/mssql-tools/bin/sqlcmd -U sa -S "$MSSQL_SERVER" -P "$MSSQL_SA_PASSWORD" -i /scripts/restore_db.sql
/opt/mssql-tools/bin/sqlcmd -U sa -S "$MSSQL_SERVER" -P "$MSSQL_SA_PASSWORD" -i /scripts/configure.sql