App.controller "WeaponsController", ($scope, Weapon) ->
  $scope.weapons = Weapon.query()

  $scope.search = ->
    params = {
      "q[name_cont]" : $scope.params.name
    }
    $scope.weapons = Weapon.query(params)