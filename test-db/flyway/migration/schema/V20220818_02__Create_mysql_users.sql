CREATE USER 'developer'@'%' IDENTIFIED BY '1234qwer!@#$' PASSWORD EXPIRE NEVER;
GRANT ALL PRIVILEGES ON 'test-db'.* TO 'developer'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;