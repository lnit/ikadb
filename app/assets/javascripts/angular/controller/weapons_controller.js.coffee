App.controller "WeaponsController", ($scope, Weapon) ->
  $scope.weapons = Weapon.query()

  $scope.search = ->
    return unless $scope.params
    params = {}
    params["q[name_cont]"] = $scope.params.name if $scope.params.name
    params["q[main_weapon_weapon_type_eq_any][]"] = $scope.params.type if $scope.params.type
    $scope.weapons = Weapon.query(params)