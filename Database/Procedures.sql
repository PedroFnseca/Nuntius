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
  UPDATE users SET 
  user_name = user_name, user_email = user_email, user_password = user_password, 
  user_phone = user_phone, user_birthdate = user_birthdate 
    WHERE user_id = user_id;
END;

---------------------------------------------------------------------------------------

# Para fazer login

CREATE PROCEDURE login(
  IN user_email VARCHAR(100),
  IN user_password VARCHAR(30)
)
BEGIN
  SELECT user_id, user_name FROM users
    WHERE user_email = user_email AND user_password = user_password;
END;

---------------------------------------------------------------------------------------

