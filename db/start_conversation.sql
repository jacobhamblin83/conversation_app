INSERT INTO conversations (name, user_id) 
VALUES ($1, $2)
RETURNING id 
AS conversation_id