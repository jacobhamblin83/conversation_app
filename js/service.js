angular.module('app').service('service', function($http) {

    this.register_user = obj => $http.post('/register_user', obj)

    this.get_user = obj => $http.post('/get_user', obj)

    this.get_friends = () => $http.get('/get_friends')

    this.get_conversations = () => $http.get('/get_conversations')

    this.get_conversation_content = obj => $http.post('/get_conversation_content', obj)

    this.get_conversation_members = obj => $http.post('/get_conversation_members', obj)

    this.get_friend_friends = obj => $http.post('/get_friend_friends', obj)





})