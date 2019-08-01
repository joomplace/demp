### Dump database for future use:
From the host:

`vagrant ssh -c "docker exec database mysqldump -u db_user -pdb_user_password joomla > /var/www/docker/mysql/init/database_dump.sql"`

