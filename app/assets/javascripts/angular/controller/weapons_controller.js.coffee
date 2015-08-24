App.controller "WeaponsController", ["$scope", "Weapon", ($scope, Weapon) ->
  $scope.params = {"range_compare" : "gt"}
  $scope.weapons = Weapon.query()

  $scope.search = ->
    return unless $scope.params
    params = {}
    params["q[name_cont]"] = $scope.params.name if $scope.params.name
    params["q[main_weapon_weapon_type_eq_any][]"] = $scope.params.type if ($scope.params.type || []).length > 0
    params["q[sub_weapon_id_eq_any][]"] = $scope.params.sub_weapon if ($scope.params.sub_weapon || []).length > 0
    params["q[special_weapon_id_eq_any][]"] = $scope.params.special_weapon if ($scope.params.special_weapon || []).length > 0

    if $scope.params.range
      key = "q[main_weapon_range_" + $scope.params.range_compare + "]"
      params[key] = $scope.params.range

    $scope.weapons = Weapon.query(params)
    _gaq.push([
      "_trackEvent",
      "weapon",
      JSON.stringify(params),
      "",
      1,
      false
    ]) if ENV.isProduction
]
