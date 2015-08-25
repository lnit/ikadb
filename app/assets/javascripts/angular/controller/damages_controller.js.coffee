App.controller "DamagesController", ["$scope", "MainWeapon", ($scope, MainWeapon) ->
  $scope.params = {
    attack_main: 0,
    attack_sub: 0,
    defense_main: 0,
    defense_sub: 0
  }
  $scope.main_weapons = MainWeapon.query({
    "q[weapon_type_eq_any][]" : ["0", "1"] # シューターとブラスター
  })
]
