##                              BANCO DE DADOS NUNTIUS

---------------------------------------------------------------------------------------

DROP IF EXISTS Nuntius_db;

CREATE DATABASE Nuntius_db;

USE Nuntius_db;

---------------------------------------------------------------------------------------

# Tabela para armazenamento de dados de usuários
CREATE TABLE users(
  user_id AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(100) NOT NULL,
  user_email VARCHAR(100) NOT NULL,
  user_password VARCHAR(30) NOT NULL,
  user_phone VARCHAR(15) NOT NULL,
  user_birthdate DATE NOT NULL,
)

---------------------------------------------------------------------------------------