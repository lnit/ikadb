describe "DamagesController", ->
  beforeEach ->
    module('Ikadb')

  beforeEach ->
    inject ($controller, $rootScope, MainWeapon, SubWeapon) ->
      @scope = $rootScope.$new()
      @ctrl = $controller("DamagesController", { $scope: @scope })
      spyOn(MainWeapon, "query").and.callFake ->
        return [{"id":1,"name":"わかばシューター","weapon_type":0,"real_damage":28.0,"max_damage":33.3}]
      spyOn(SubWeapon, "query").and.callFake ->
        return [{"id":11,"name":"クイックボム(直撃)","real_damage":60.0}]

  describe "calculate()", ->
    it "power", ->
      @scope.params.attack_main = 1
      @scope.calculate()
      expect(@scope.params.power).toEqual(1.0909)
