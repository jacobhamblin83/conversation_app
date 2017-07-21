angular.module('app')
.controller('controller', function($scope, service) {

    $scope.friends_of_friends = []
    $scope.friends = []

    $scope.register_user = obj => {
        service.register_user(obj).then( response => {
            $scope.nothing = response.data
        })
    }

    $scope.get_user = obj => {
        service.get_user(obj).then( response => {
            $scope.user = response.data[0]
        })
    }

    $scope.get_friends = () => {
        service.get_friends().then( response => {
            $scope.friends = response.data
        })
    }

    $scope.get_conversations = () => {
        service.get_conversations().then( response => {
            console.log(response.data)
            $scope.conversations = response.data
        })
    }

    $scope.current_conversation = null
    $scope.current_members = null

    $scope.get_conversation_content = obj => {
        service.get_conversation_content(obj).then( response => {
            $scope.posts = response.data
            $scope.current_conversation = {
                id: obj.id, 
                name: obj.name
            }
        })
        service.get_conversation_members(obj).then( response => {
            $scope.conversation_members = response.data
        })
    }

    $scope.get_friend_friends = obj => {
        service.get_friend_friends(obj).then( response => {
            $scope.friends_of_friends = response.data
        })
    }

})