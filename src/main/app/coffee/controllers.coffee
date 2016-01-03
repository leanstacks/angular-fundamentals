# Define the Application Controllers Module
myControllers = angular.module 'myControllers', []

# Define the GreetingListController Controller
myControllers.controller 'GreetingListController', ['$scope', 'Greeting'
  ($scope, Greeting) ->

    $scope.greetings = Greeting.query()

    $scope.greetingSort = 'text'

]

# Define the GreetingDetail Controller
myControllers.controller 'GreetingDetailController', ['$scope', '$routeParams', 'Greeting',
  ($scope, $routeParams, Greeting) ->

    $scope.greeting = Greeting.get {greetingId: $routeParams.greetingId}

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
