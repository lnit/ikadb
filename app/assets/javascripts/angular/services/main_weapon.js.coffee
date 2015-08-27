App.factory "MainWeapon", ["$resource", ($resource) ->
  $resource "/weapons/main_weapons.json"
]
