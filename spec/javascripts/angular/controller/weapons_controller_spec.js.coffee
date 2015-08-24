describe "WeaponsController", ->
  beforeEach ->
    module('Ikadb')

  beforeEach ->
    inject ($controller, $rootScope, Weapon) ->
      @scope = $rootScope.$new()
      @ctrl = $controller("WeaponsController", { $scope: @scope })
      spyOn(Weapon, "query").and.callFake ->
        return []

  it "search()", ->
    @scope.search()
    expect(@scope.weapons).toEqual([])
