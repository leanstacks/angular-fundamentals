# Define the Application Controllers Module

myControllers = angular.module 'myControllers', []

# Define the GreetingController Controller

myControllers.controller 'GreetingController', ['$scope', 'Greeting'
  ($scope, Greeting) ->

    $scope.greetings = Greeting.query()

    $scope.greetingSort = 'text'

]

# Define the HeaderController Controller

myControllers.controller 'HeaderController', ['$scope',
  ($scope) ->

    $scope.pageHeading = 'AngularJS Starter Project'

]

# Define the FooterController Controller

myControllers.controller 'FooterController', ['$scope',
  ($scope) ->

    $scope.currentDateTime = new Date()

]
