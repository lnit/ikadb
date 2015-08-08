App.controller "GearsController", ["$scope", "Gear", ($scope, Gear) ->
  $scope.params = {}
  $scope.gears = Gear.query()

  $scope.search = ->
    return unless $scope.params
    params = {}
    params["q[name_cont]"] = $scope.params.name if $scope.params.name
    params["q[gear_type_eq_any][]"] = $scope.params.type if $scope.params.type
    if $scope.params.slot
      slots = []
      slots.push 1 if $scope.params.slot.s1
      slots.push 2 if $scope.params.slot.s2
      slots.push 3 if $scope.params.slot.s3
      params["q[slot_eq_any][]"] = slots unless slots == []
    params["q[power_id_eq_any][]"] = $scope.params.power if $scope.params.power
    params["q[brand_id_eq_any][]"] = $scope.params.brand if $scope.params.brand
    params["q[released_version_eq]"] = 200 if ($scope.params.released_version || {}).v200

    $scope.gears = Gear.query(params)
    _gaq.push([
      "_trackEvent",
      "gear",
      JSON.stringify(params),
      "",
      1,
      false
    ])
]
