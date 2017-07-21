SELECT users.name, conversation_members.member_id 
AS user_id 
FROM conversation_members
JOIN users 
ON users.id = conversation_members.member_id
WHERE conversation_id = $1