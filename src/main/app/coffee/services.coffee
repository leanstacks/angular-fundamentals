# Define the Application Services Module
myServices = angular.module 'myServices', ['ngResource']

# Define the Greeting Service
myServices.factory 'Greeting', ['$resource',
  ($resource) ->
    $resource 'assets/app/data/greetings/:greetingId.json', {}, {
      query:
        method: 'GET'
        params:
          greetingId: 'greetings'
        isArray: true
    }
]
