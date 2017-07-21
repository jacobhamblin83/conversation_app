SELECT users.name, user_friends.id 
FROM user_friends 
JOIN users 
ON users.id = user_friends.friend_id
WHERE user_friends.user_id = $1