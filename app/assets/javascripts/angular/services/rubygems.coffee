app = angular.module("app")
app.service 'Rubygems', ['$http', ($http) ->
  ROOT = "https://rubygems.org/api/v1"
  search: (query) ->
    # Return a promise: http://stackoverflow.com/a/12513509
    promise = $http.get("#{ROOT}/search.json?query=#{query}").then (response) ->
      response.data
]
