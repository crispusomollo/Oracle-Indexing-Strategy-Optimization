SELECT
    'CREATE INDEX idx_' || table_name || '_' || column_name ||
    ' ON ' || owner || '.' || table_name ||
    '(' || column_name || ');' AS index_ddl
FROM dba_tab_columns
WHERE table_name = 'ORDERS'
  AND column_name = 'ORDER_DATE';

