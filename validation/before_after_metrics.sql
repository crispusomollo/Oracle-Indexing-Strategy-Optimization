SELECT
    sql_id,
    executions,
    elapsed_time/1e6 elapsed_sec,
    cpu_time/1e6 cpu_sec
FROM v$sql
WHERE sql_id = '&sql_id';

