TableCtrl = ($scope, $translate) ->
  @test = "hola"

  $translate(['test1', 'test2']).then (translations) ->
    $scope.test1 = translations['test1']
    $scope.test2 = translations['test2']

  @

TableCtrl.$inject = ['$scope', '$translate']

app.controller 'TableCtrl', TableCtrl