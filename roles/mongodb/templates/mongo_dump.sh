#!/bin/bash

TIMESTAMP=`date "+%Y-%m-%d"`
BACKUP_LIFETIME_DAYS={{ mongodb_backup_lifetime_days }}

# Run database backup
mongodump -o {{ mongodb_backup_dir }}/dump

# Compress to timestamped tarball
tar -cvzf {{ mongodb_backup_dir }}/{{ mongodb_backup_file_prefix }}_$TIMESTAMP.tar.gz {{ mongodb_backup_dir }}/dump

# Remove dump directory
rm -rf {{ mongodb_backup_dir }}/dump

# Remove old backups
find {{ mongodb_backup_dir }} -maxdepth 1 -mtime +$BACKUP_LIFETIME_DAYS -type f -exec rm {} \;