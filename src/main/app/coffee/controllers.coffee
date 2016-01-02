# Define the Application Controllers Module

myControllers = angular.module 'myControllers', []

# Define the GreetingController Controllers

myControllers.controller 'GreetingController', ['$scope',
  ($scope) ->

    $scope.greeting = 'Hello World!'
]
