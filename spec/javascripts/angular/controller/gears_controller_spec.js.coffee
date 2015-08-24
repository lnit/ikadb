describe "GearsController", ->
  beforeEach ->
    module('Ikadb')

  beforeEach ->
    inject ($controller, $rootScope, Gear) ->
      @scope = $rootScope.$new()
      @ctrl = $controller("GearsController", { $scope: @scope })
      spyOn(Gear, "query").and.callFake ->
        return []

  it "search()", ->
    @scope.search()
    expect(@scope.gears).toEqual([])
