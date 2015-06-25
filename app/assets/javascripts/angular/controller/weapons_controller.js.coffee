App.controller "WeaponsController", ($scope, Weapon) ->
  $scope.weapons = Weapon.query()

  $scope.search = ->
    return unless $scope.params
    params = {}
    params["q[name_cont]"] = $scope.params.name if $scope.params.name
    params["q[main_weapon_weapon_type_eq_any][]"] = $scope.params.type if $scope.params.type
    params["q[sub_weapon_id_eq_any][]"] = $scope.params.sub_weapon if $scope.params.sub_weapon
    params["q[special_weapon_id_eq_any][]"] = $scope.params.special_weapon if $scope.params.special_weapon
    $scope.weapons = Weapon.query(params)