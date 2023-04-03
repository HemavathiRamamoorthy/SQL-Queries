SELECT 
DB_NAME(dbid) as DBName, 
COUNT(dbid) as NumberOfConnections,
loginame as LoginName, hostname, hostprocess
FROM
sys.sysprocesses with (nolock)
WHERE 
dbid > 0
GROUP BY 
dbid, loginame, hostname, hostprocess
