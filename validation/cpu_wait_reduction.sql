SELECT
    event,
    total_waits,
    time_waited/100 time_waited_sec
FROM v$system_event
WHERE event LIKE 'db file%';

