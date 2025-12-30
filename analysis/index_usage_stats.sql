SELECT
    i.index_name,
    s.leaf_blocks,
    s.blevel,
    s.clustering_factor,
    t.num_rows
FROM dba_indexes i
JOIN dba_ind_statistics s ON i.index_name = s.index_name
JOIN dba_tables t ON i.table_name = t.table_name
WHERE i.owner = 'APP'
ORDER BY s.clustering_factor DESC;

