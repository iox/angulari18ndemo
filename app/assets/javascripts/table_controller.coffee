TableCtrl = ($scope, $translate, $http) ->
  @order = 'density'
  @reverse = true

  $translate(['test1', 'test2']).then (translations) ->
    $scope.test1 = translations['test1']
    $scope.test2 = translations['test2']

  $http.get('/api/population_density.json').success (data, status, headers, config) =>
    @population_density = data

  @

TableCtrl.$inject = ['$scope', '$translate', '$http']

app.controller 'TableCtrl', TableCtrl