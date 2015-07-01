App.factory "Gear", ["$resource", ($resource) ->
  $resource "/gears.json"
]