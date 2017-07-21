--Functional queries--

checklist

comment out when complete

-- register a new user
-- get user
-- get friends
-- get conversations
-- see conversation
-- see conversation members
-- add global friends of user
-- start a conversation
-- delete conversation
-- delete a post 
-- edit a post
-- delete a friend globally

-- register a new user --
INSERT INTO users(name, email, password) 
VALUES($1, $2, $3);

-- get user --
SELECT id, name 
FROM users
WHERE users.email = $1
AND users.password = $2

-- get a users friends --
SELECT users.name, user_friends.id 
FROM user_friends 
JOIN users 
ON users.id = user_friends.friend_id
WHERE user_friends.user_id = $1

-- get a users conversations --
SELECT conversations.name, user_conversations.id 
FROM user_conversations 
JOIN conversations 
ON conversations.id = user_conversations.conversation_id
WHERE user_conversations.user_id = $1

-- gets conversation content based on a given conversation.id --
SELECT posts.id, users.name, users.id, posts.content 
FROM posts 
JOIN conversations 
ON conversations.id = posts.conversation_id
JOIN users 
ON users.id = posts.user_id
WHERE conversations.id = $1

-- get this conversations members --
SELECT users.name, conversation_members.member_id 
AS user_id 
FROM conversation_members
JOIN users 
ON users.id = conversation_members.member_id
WHERE conversation_id = $1

-- get friend id from email --
SELECT id 
AS friend_id
FROM users 
WHERE users.email = $1 -- response -->

INSERT INTO user_friends (user_id, friend_id)
VALUES ($1, $2)

INSERT INTO user_friends (user_id, friend_id)
VALUES ($2, $1)

-- start a new conversation --
 
INSERT INTO conversations (name, user_id) 
VALUES ($1, $2)
RETURNING id 
AS conversation_id -- response -->

INSERT INTO user_conversations (user_id, conversation_id)
VALUES ($1, $2)

INSERT INTO conversation_members (conversation_id, member_id) 
VALUES($1, $2)

-- delete a conversation 

DELETE FROM conversations 
WHERE id = $1

-- delete a post --

DELETE FROM posts
WHERE id = $1

-- edit a post --

UPDATE posts 
SET content = $1
WHERE id = $2

-- remove a friend from user --

DELETE FROM user_friends
WHERE user_id = $1 
AND friend_id = $2

-- remove a user from friend --

DELETE FROM user_friends
WHERE user_id = $2
AND friend_id = $1

-- remove friend from conversation --

DELETE FROM conversation_members 
WHERE member_id = $1

-- remove conversation from friend --

DELETE FROM user_conversations
WHERE conversation_id = $1

