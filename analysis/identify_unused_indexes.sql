SELECT
    owner,
    index_name,
    table_name,
    monitoring,
    used
FROM dba_object_usage
WHERE monitoring = 'YES'
  AND used = 'NO';

