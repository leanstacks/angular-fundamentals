# Define the Application Controllers Module

myControllers = angular.module 'myControllers', []

# Define the GreetingController Controller

myControllers.controller 'GreetingController', ['$scope',
  ($scope) ->

    $scope.greetings = [
      id: 1
      text: 'Hello World!'
      lang: 'en'
    ,
      id: 2
      text: 'Hola Mundo!'
      lang: 'es'
    ,
      id: 3
      text: 'Bonjour Le Monde!'
      lang: 'fr'
    ]

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
