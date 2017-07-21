create table users (id serial, name varchar, email varchar, password varchar);
create table conversations (id serial, name varchar, user_id int);
create table user_friends (id serial, user_id int, friend_id int);
create table user_conversations (id serial, user_id int, conversation_id int);
create table conversation_members (conversation_id int, member_id int);
create table posts (id serial, conversation_id int, user_id int, content varchar);

insert into users (name, email, password)
values ('Jacob', 'jacobhamblin83@gmail.com', 'testies');

insert into users(name, email, password) 
values('ashlee', 'ashlee@gmail.com', 'ashlee');

insert into users (name, email, password) 
values ('miles', 'miles@gmail.com', 'miles');

insert into users (name, email, password) 
values ('haven', 'haven@gmail.com', 'haven');

insert into users (name, email, password) 
values ('maris', 'maris@gmail.com', 'maris');

insert into conversations (name, user_id) 
values ('My day at the beach', 1);
insert into conversations (name, user_id) 
values ('I like fishing', 1);
insert into conversations (name, user_id) 
values ('Lets go swimming', 1);
insert into conversations (name, user_id) 
values ('Its time to get it on', 2);
insert into conversations (name, user_id) 
values ('Last nights positions', 2);
insert into conversations (name, user_id) 
values ('Doggy vs Piledriver', 4);

insert into user_friends (user_id, friend_id) 
values (1,2);
insert into user_friends (user_id, friend_id) 
values (1,3);
insert into user_friends (user_id, friend_id) 
values (1,4);
insert into user_friends (user_id, friend_id) 
values (1,5);
insert into user_friends (user_id, friend_id) 
values (2,1);
insert into user_friends (user_id, friend_id) 
values (2,3);
insert into user_friends (user_id, friend_id) 
values (3,1);
insert into user_friends (user_id, friend_id) 
values (3,2);
insert into user_friends (user_id, friend_id) 
values (3,5);
insert into user_friends (user_id, friend_id) 
values (4,1);
insert into user_friends (user_id, friend_id) 
values (4,5);
insert into user_friends (user_id, friend_id) 
values (5,1);
insert into user_friends (user_id, friend_id) 
values (5,3);
insert into user_friends (user_id, friend_id) 
values (5,4);
insert into user_conversations (user_id, conversation_id) 
values (1, 1);
insert into user_conversations (user_id, conversation_id) 
values (2, 1);
insert into user_conversations (user_id, conversation_id) 
values (3, 1);
insert into user_conversations (user_id, conversation_id) 
values (4, 1);
insert into user_conversations (user_id, conversation_id) 
values (5, 1);
insert into user_conversations (user_id, conversation_id) 
values (2, 1);
insert into user_conversations (user_id, conversation_id) 
values (2, 3);
insert into user_conversations (user_id, conversation_id) 
values (2, 1);
insert into user_conversations (user_id, conversation_id) 
values (2, 2);
insert into user_conversations (user_id, conversation_id) 
values (3, 1);
insert into user_conversations (user_id, conversation_id) 
values (3, 2);
insert into user_conversations (user_id, conversation_id) 
values (3, 3);
insert into user_conversations (user_id, conversation_id) 
values (3, 5);
insert into user_conversations (user_id, conversation_id) 
values (4, 1);
insert into user_conversations (user_id, conversation_id) 
values (4, 5);
insert into user_conversations (user_id, conversation_id) 
values (5, 1);
insert into user_conversations (user_id, conversation_id) 
values (5, 3);
insert into user_conversations (user_id, conversation_id) 
values (5, 4);
insert into conversation_members (conversation_id, member_id) 
values (1, 1);
insert into conversation_members (conversation_id, member_id) 
values (1, 2);
insert into conversation_members (conversation_id, member_id) 
values (1, 3);
insert into conversation_members (conversation_id, member_id) 
values (1, 4);
insert into conversation_members (conversation_id, member_id) 
values (1, 5);
insert into conversation_members (conversation_id, member_id) 
values (2, 1);
insert into conversation_members (conversation_id, member_id) 
values (2, 2);
insert into conversation_members (conversation_id, member_id) 
values (2, 3);
insert into conversation_members (conversation_id, member_id) 
values (3, 1);
insert into conversation_members (conversation_id, member_id) 
values (3, 2);
insert into conversation_members (conversation_id, member_id) 
values (3, 3);
insert into conversation_members (conversation_id, member_id) 
values (3, 5);
insert into conversation_members (conversation_id, member_id) 
values (4, 1);
insert into conversation_members (conversation_id, member_id) 
values (4, 5);
insert into conversation_members (conversation_id, member_id) 
values (4, 4);
insert into conversation_members (conversation_id, member_id) 
values (5, 1);
insert into conversation_members (conversation_id, member_id) 
values (5, 3);
insert into conversation_members (conversation_id, member_id) 
values (5, 4);
insert into conversation_members (conversation_id, member_id) 
values (5, 5);

insert into posts (conversation_id, user_id, content) 
values (1, 1, 'I had a really fun time at the beach today. It was a blast. We got super wet');
insert into posts (conversation_id, user_id, content) 
values (1, 2, 'Im glad you had a good time at the beach');
insert into posts (conversation_id, user_id, content) 
values (1, 1, 'Thats nice of you to say. Next time ill bring a watermelon to the beach');
insert into posts (conversation_id, user_id, content) 
values (1, 3, 'We should get together later and make cookies with sand in them from the beach');
insert into posts (conversation_id, user_id, content) 
values (1, 1, 'Thats a really good idea. I love sand in cookies.');
insert into posts (conversation_id, user_id, content) 
values (1, 4, 'Im not coming. I hate sand.');
insert into posts (conversation_id, user_id, content) 
values (1, 5, 'Sorry Im busy too, plus I hate the beach and sand.');
insert into posts (conversation_id, user_id, content) 
values (1, 1, 'What are you doing that so important to miss out on our beach sand fun?');
insert into posts (conversation_id, user_id, content) 
values (1, 5, 'Im getting my fortune cookie from panda express with no sand');
insert into posts (conversation_id, user_id, content) 
values (2, 1, 'I caught the biggest fish in the world');
insert into posts (conversation_id, user_id, content) 
values (2, 2, 'How big a fish was it?');
insert into posts (conversation_id, user_id, content) 
values (2, 1, 'It was bigger than me. Its fins were also big.');
insert into posts (conversation_id, user_id, content) 
values (2, 3, 'I wish I could have gone fishing');
insert into posts (conversation_id, user_id, content) 
values (3, 1, 'Who can go to the pool?');
insert into posts (conversation_id, user_id, content) 
values (3, 2, 'It depends which pool.');
insert into posts (conversation_id, user_id, content) 
values (3, 1, 'Provo rec center pool.');
insert into posts (conversation_id, user_id, content) 
values (3, 2, 'I cant go then, the pool water is too hot.');
insert into posts (conversation_id, user_id, content) 
values (3, 3, 'Can you buy me a swimsuit?');
insert into posts (conversation_id, user_id, content) 
values (3, 5, 'Ill pick one up for you.');
insert into posts (conversation_id, user_id, content) 
values (4, 2, 'It really is time to get it on. ');
insert into posts (conversation_id, user_id, content) 
values (4, 1, 'I agree. It has been too long. Get it on now.');
insert into posts (conversation_id, user_id, content) 
values (4, 4, 'Not all of us want to get it on');
insert into posts (conversation_id, user_id, content) 
values (4, 5, 'I cant get it on till my AIDS goes away');
insert into posts (conversation_id, user_id, content) 
values (4, 2, 'gross. AIDS. Not getting it on with you');
insert into posts (conversation_id, user_id, content) 
values (5, 2, 'Last nights positions were great.');
insert into posts (conversation_id, user_id, content) 
values (5, 1, 'I did not like any of last nights positions');











