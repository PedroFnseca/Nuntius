DROP IF EXISTS Nuntius_db;

CREATE DATABASE Nuntius_db;

# Tabela para armazenamento de dados de usuários

CREATE TABLE users(
  user_id AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(100) NOT NULL,
  user_email VARCHAR(100) NOT NULL,
  user_password VARCHAR(30) NOT NULL,
  user_phone VARCHAR(15) NOT NULL,
  user_birthdate DATE NOT NULL,
)

##                                  PROCEDURES 

---------------------------------------------------------------------------------------

# Para inserir um novo usuário
CREATE PROCEDURE insert_user(
  IN user_name VARCHAR(100),
  IN user_email VARCHAR(100),
  IN user_password VARCHAR(30),
  IN user_phone VARCHAR(15),
  IN user_birthdate DATE
)
BEGIN
  INSERT INTO users(user_name, user_email, user_password, user_phone, user_birthdate)
  VALUES(user_name, user_email, user_password, user_phone, user_birthdate);
END;

---------------------------------------------------------------------------------------

# Para atualizar um usuário
CREATE PROCEDURE update_user(
  IN user_id INT,
  IN user_name VARCHAR(100),
  IN user_email VARCHAR(100),
  IN user_password VARCHAR(30),
  IN user_phone VARCHAR(15),
  IN user_birthdate DATE
)
BEGIN
  UPDATE users SET user_name = user_name, user_email = user_email, user_password = user_password, user_phone = user_phone, user_birthdate = user_birthdate WHERE user_id = user_id;
END;

---------------------------------------------------------------------------------------

# Para deletar um usuário
CREATE PROCEDURE delete_user(
  IN user_id INT
)
BEGIN
  DELETE FROM users WHERE user_id = user_id;
END;

---------------------------------------------------------------------------------------

# Para buscar um usuário
CREATE PROCEDURE select_user(
  IN user_id INT
)
BEGIN
  SELECT * FROM users WHERE user_id = user_id;
END;

---------------------------------------------------------------------------------------