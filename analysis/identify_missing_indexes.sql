SELECT
    s.sql_id,
    s.executions,
    s.elapsed_time/1e6 elapsed_sec,
    p.object_owner,
    p.object_name,
    p.operation
FROM v$sql s
JOIN v$sql_plan p ON s.sql_id = p.sql_id
WHERE p.operation = 'TABLE ACCESS'
  AND p.options = 'FULL'
  AND s.executions > 50
ORDER BY elapsed_sec DESC;

