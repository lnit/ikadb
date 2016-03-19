App.controller "DamagesController", ["$scope", "MainWeapon", "SubWeapon", ($scope, MainWeapon, SubWeapon) ->
  $scope.initialize = ->
    $scope.params = {
      attack_main: 0,
      attack_sub: 0,
      defense_main: 0,
      defense_sub: 0,
      power: 1
    }
    $scope.main_weapons = MainWeapon.query(
      {
        "q[weapon_type_eq_any][]" : ["0", "2", "4", "5"],
        "q[real_damage_gt]" : "0"
      },
      (main_weapons) ->
        angular.forEach main_weapons, (main_weapon) ->
          main_weapon.calculated_damage = main_weapon.real_damage.toFixed(3)
          main_weapon.needed_shots = Math.ceil(100 / main_weapon.real_damage)
          main_weapon.real_needed_shots = main_weapon.needed_shots
    )
    $scope.sub_weapons = SubWeapon.query(
      {
        "q[real_damage_gt]" : "0"
      },
      (sub_weapons) ->
        angular.forEach sub_weapons, (sub_weapon) ->
          sub_weapon.calculated_damage = sub_weapon.real_damage.toFixed(3)
          sub_weapon.needed_shots = Math.ceil(100 / sub_weapon.real_damage)
          sub_weapon.real_needed_shots = sub_weapon.needed_shots
          sub_weapon.is_sub_weapon = true
    )
    $scope.manually_weapons = [{}, {}, {}, {}]
  $scope.initialize()

  $scope.validate = (p) ->
    return false unless (p.attack_main? && p.attack_sub? && p.defense_main? && p.defense_sub?)
    return false unless (0 <= p.attack_main <= 3)
    return false unless (0 <= p.attack_sub <= 9)
    return false unless (0 <= p.defense_main <= 3)
    return false unless (0 <= p.defense_sub <= 9)
    return true

  $scope.limit = ->
    max_attack_main = 3
    max_defense_main = 3

    max_attack_main-- if $scope.params.haunt_attack
    max_defense_main-- if $scope.params.haunt_defense
    max_defense_main-- if $scope.params.bomb_search

    $scope.params.attack_main = max_attack_main if $scope.params.attack_main > max_attack_main
    $scope.params.defense_main = max_defense_main if $scope.params.defense_main > max_defense_main


  $scope.calculate = ->
    p = $scope.params
    return unless $scope.validate(p)

    $scope.limit()

    attack_point  = p.attack_main  * 10 + p.attack_sub  * 3
    defense_point = p.defense_main * 10 + p.defense_sub * 3

    attack_power = ((0.99 * attack_point) - (0.09 * attack_point) ** 2) / 100.0
    defense_power = ((0.99 * defense_point) - (0.09 * defense_point) ** 2) / 100.0

    power = attack_power - defense_power
    power = power / 1.8 if power < 0
    power = power + 1
    power = 1.300 if power > 1.300 # 最大ダメージ倍率は1.300らしいので
    $scope.params.power = power

    angular.forEach [$scope.main_weapons, $scope.sub_weapons, $scope.manually_weapons], (weapons) ->
      angular.forEach weapons, (weapon) ->
        unless !!weapon.real_damage
          weapon.calculated_damage = null
          return
        # 最終ダメージの算出
        calculated_damage = (weapon.real_damage * power)
        calculated_damage = calculated_damage * 0.8 if weapon.is_sub_weapon && p.bomb_search
        if weapon.max_damage?
          weapon.calculated_damage = if calculated_damage < weapon.max_damage then calculated_damage else weapon.max_damage
        else
          weapon.calculated_damage = calculated_damage
        weapon.calculated_damage = (Math.floor(weapon.calculated_damage * 1000) / 1000).toFixed(3)

        # 確殺数の算出
        weapon.needed_shots = Math.ceil(100 / weapon.calculated_damage)
        weapon.real_needed_shots = Math.ceil(100 / weapon.real_damage)
]
