CREATE USER 'impostor'@'localhost' IDENTIFIED BY 'holy_shit_change_this'; 
GRANT ALL ON impostor_dev.* TO 'impostor'@'localhost';
GRANT ALL ON impostor_test.* TO 'impostor'@'localhost';
GRANT ALL ON impostor.* TO 'impostor'@'localhost';
