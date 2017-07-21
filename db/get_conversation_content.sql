SELECT posts.id, posts.content, users.name, users.id as user_id 
FROM posts 
JOIN conversations 
ON conversations.id = posts.conversation_id
JOIN users 
ON users.id = posts.user_id
WHERE conversations.id = $1
ORDER BY posts.id