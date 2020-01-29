angular.module('jokes', ['ngRoute']).config(function ($routeProvider) {

    $routeProvider.when('/', {
        templateUrl: 'jokes.html',
        controller: 'joke'
    })

}).controller('joke', function ($scope, $http) {

    $http.get('random').success(function (data) {
        $scope.joke = data;
    });

});