# Admin Guide

## Table of Contents 
- Configurations
- Backup and Restore
- Common Admin Tools
- Maintenance Plans
- Optimizations

<br><hr><br>

# Configurations
- postgresql.conf 
```
log_destination = 'stderr' 
logging_collector = on 
log_directory = 'pg_log' 
log_filename = 'postgresql-%Y-%m-%d_%H%M%S.log' 
log_truncate_on_rotation = off 
log_rotation_age = 1d 
log_min_duration_statement = 0 
log_connections = on 
log_duration = on 
log_hostname = on 
log_timezone = 'UTC'
```

<br><hr><br>

## Common Admin Tools
- Server Info
- Database Info 
- Schedule Info 

<br><hr><br>

## Common Tasks
- Manual Backup
```bash
$ pg_dumpall > /backup-path/pg-backup-dump.sql > /var/log/postgres/pg-backup-dump.log
```


<br><hr><br>

## Maintenance Plan
- Daily Tasks
- Weekly Tasks
- Monthly Tasks
- Quarterly Tasks 

## References  

- https://minervadb.xyz/postgresql-dba-daily-checklist/