# Arquitetura do Nuntius 👷‍♂️
> ### Feito por [Pedrofnseca](https://github.com/PedroFnseca)

<br>

## Introdução 📖

### Aqui nesse diretório você encontrará a documentação da arquitetura do projeto Nuntius.

- ### API 📡
- ### Banco de dados 📊
- ### Websocket💬
- ### Frontend 🖥️

<br>

## Tecnologias utilizadas 🛠️

<p align="center">
<img alt="JavaScript" src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" />
<img alt="NodeJS" src="https://img.shields.io/badge/NodeJS-339933?style=for-the-badge&logo=node.js&logoColor=white" />
<img alt="ReactJS" src="https://img.shields.io/badge/ReactJS-61DAFB?style=for-the-badge&logo=react&logoColor=black" />
<img alt="NextJS" src="https://img.shields.io/badge/NextJS-000000?style=for-the-badge&logo=next.js&logoColor=white" />
<img alt="TypeScript" src="https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white" />
<img alt="MongoDB" src="https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white" />
<img alt="PostgreSQL" src="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white" />
<img alt="Socket.io" src="https://img.shields.io/badge/Socket.io-010101?style=for-the-badge&logo=socket.io&logoColor=white" />
</p>

<br>

---

# Bancos de dados do Nutius 💻

<br>

# Quais são os bancos de dados utilizados? 🤔

### O Nuntius irá utilizar dois tipos de banco de dados, um para dados de usuários e outro para conversas e outros dados não relacionais.

<br>

# Banco de dados relacional 🐘

### O banco de dados relacional irá armazenar os dados de usuário. Será utilizado o PostgreSQL.

<br>

# Banco de dados não relacional 🐍

### Para os dados não relacionais como conversas, alguns dados de foruns, etc. Será utilizado o MongoDB.

<br>

> ## Coleções do MongoDB 📚

- ### Conversas 🗣️
- ### Foruns 📝
- ### Amizades 🤝

<br>

## Coleção de conversa 🗣️

```json
{
  "chat_id": "string",
  "users": [
    {
      "user_id": "string",
      "user_name": "string",
    }
  ],
  "messages": [
    {
      "message_id": "string",
      "user_id": "string",
      "message_content": "string",
      "datetime": "string"
    }
  ]
}
```

## Coleleção de foruns 📝

```json
{
  "forum_id": "string",
  "forum_name": "string",
  "forum_description": "string",
  "forum_adm": [
    {
      "user_id": "string",
      "user_name": "string"
    }
  ],
  "forum_members": [
    {
      "user_id": "string",
      "user_name": "string"
    }
  ],
  "forum_posts": [
    {
      "post_id": "string",
      "user_id": "string",
      "user_name": "string",
      "post_content": "string",
      "datetime": "string",
      "post_comments": [
        {
          "comment_id": "string",
          "user_id": "string",
          "user_name": "string",
          "comment_content": "string",
          "datetime": "string"
        }
      ]
    }
  ]
}
```

## Coleção de amizades 🤝

```json
{
  "user_id": "string",
  "user_name": "string",
  "friends": [
    {
      "user_id": "string",
      "user_name": "string"
    }
  ]
}
```

<br>

---

# Protocolo Websocket 💬
> ### Método utilizado para o funcionamento dos chats do projeto.

# O que é WebSocket? 🤔 

#### O WebSocket é um protocolo de comunicação que funciona sobre o protocolo HTTP. Permite comunicações bidirecionais através de canais full-duplex permitindo que os dados sejam enviados e recebidos em tempo real. 

<p align="center"> 
  <img src="https://user-images.githubusercontent.com/97262778/194972842-0423acca-dd3a-47e8-8978-d3f0202053cc.png" width="60%"/> 
</p>

<br>

# Socket.io 📡

#### O Socket.io é uma biblioteca JavaScript que trabalha com o protocolo WebSocket, e ela será utilizada dentro dos chats.

<br>

# Manipulando eventros 📌

```javascript

// Aqui será feito a normalização dos eventos

// TODO: Normalizar os eventos

```
