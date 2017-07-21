SELECT id 
AS friend_id
FROM users 
WHERE users.email = $1