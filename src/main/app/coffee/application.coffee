# The Angular Application Module

myApp = angular.module 'myApp', [
  'myControllers',
  'myServices',
  'ngRoute',
  'ngAnimate',
  'mgcrea.ngStrap'
]

# Configure the ngRoute Module
myApp.config ['$routeProvider',
  ($routeProvider) ->
    $routeProvider
      .when '/home',
        templateUrl: 'assets/app/partials/home.html'
      .when '/greetings',
        templateUrl: 'assets/app/partials/greeting-list.html'
        controller: 'GreetingListController'
      .when '/greetings/:greetingId',
        templateUrl: 'assets/app/partials/greeting-detail.html'
        controller: 'GreetingDetailController'
      .otherwise
        redirectTo: '/home'
]
