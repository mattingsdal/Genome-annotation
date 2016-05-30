
## https://www.blast2go.com/support/blog/22-blast2goblog/110-local-blast2go-database-installation
mysql -h localhost -u root -p  < b2gdb.sql
mysql -h localhost -u root -p -e "GRANT ALL ON b2gdb.* TO 'blast2go'@'localhost' IDENTIFIED BY 'blast4it';"
mysql -h localhost -u root -p -e "FLUSH PRIVILEGES;"

mysql -s -h localhost -u root -p b2gdb < go_201605-assocdb-data
