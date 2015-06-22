App.controller "WeaponsController", ($scope, Weapon) ->
  $scope.weapons = Weapon.query()
