SELECT conversations.name, user_conversations.id, conversations.id
FROM user_conversations 
JOIN conversations 
ON conversations.id = user_conversations.conversation_id
WHERE user_conversations.user_id = $1