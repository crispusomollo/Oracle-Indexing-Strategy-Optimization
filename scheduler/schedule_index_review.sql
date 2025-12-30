BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'INDEX_REVIEW_JOB',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN DBMS_STATS.GATHER_SCHEMA_STATS(''APP''); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'FREQ=MONTHLY;BYMONTHDAY=1;BYHOUR=2',
    enabled         => TRUE
  );
END;
/

