SELECT
    sql_id,
    executions,
    cpu_time/1e6 cpu_seconds,
    buffer_gets
FROM v$sql
WHERE executions > 20
ORDER BY cpu_time DESC;

