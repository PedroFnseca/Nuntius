# Banco de dados do Nutius 💻

<br>

## Quais são os bancos de dados utilizados? 🤔

### O Nuntius irá utilizar dois tipos de banco de dados, um para dados de usuários e outro para conversas e outros dados não relacionais.

<br>

## Banco de dados relacional 📊

#### O banco de dados relacional irá armazenar os dados de usuário. Será utilizado o PostgreSQL.

---

## Tabelas do banco do PostgreSQL 📋

- #### Tabela de usuários 📝

<br>

## Banco de dados não relacional 📊

#### Para os dados não relacionais como conversas, alguns dados de foruns, etc. Será utilizado o MongoDB.

---

## Coleções do MongoDB 📚

- #### Conversas 🗣️
- #### Foruns 📝
- #### Amizades 🤝

<br>

#### Coleção de conversa 🗣️

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

### Coleleção de foruns 📝

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

### Coleção de amizades 🤝

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