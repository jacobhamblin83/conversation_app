DELETE FROM user_friends
WHERE user_id = $2
AND friend_id = $1