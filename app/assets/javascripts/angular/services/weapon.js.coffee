App.factory "Weapon", ["$resource", ($resource) ->
  $resource "/weapons.json"
]