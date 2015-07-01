App.controller "GearsController", ["$scope", "Gear", ($scope, Gear) ->
  $scope.gears = Gear.query()
]