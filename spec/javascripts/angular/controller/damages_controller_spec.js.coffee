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
      @scope.initialize()

  describe "calculate()", ->
    it "power", ->
      @scope.params.attack_main = 1
      @scope.calculate()
      expect(@scope.params.power).toEqual(1.0909)

    describe "damage", ->
      beforeEach ->
        @scope.params.defense_main = 3
        @scope.manually_weapons[0].real_damage = 90.0
        @scope.calculate()

      describe "MainWeapon", ->
        beforeEach ->
          this.subject = @scope.main_weapons[0]
        it "calculated_damage", ->
          expect(this.subject.calculated_damage).toEqual("24.514")
        it "needed_shots", ->
          expect(this.subject.needed_shots).toEqual(5)
        it "real_needed_shots", ->
          expect(this.subject.real_needed_shots).toEqual(4)

      describe "SubWeapon", ->
        beforeEach ->
          this.subject = @scope.sub_weapons[0]
        it "calculated_damage", ->
          expect(this.subject.calculated_damage).toEqual("52.529")
        it "needed_shots", ->
          expect(this.subject.needed_shots).toEqual(2)
        it "real_needed_shots", ->
          expect(this.subject.real_needed_shots).toEqual(2)

      describe "ManuallyWeapon", ->
        beforeEach ->
          this.subject = @scope.manually_weapons[0]
        it "calculated_damage", ->
          expect(this.subject.calculated_damage).toEqual("78.795")
        it "needed_shots", ->
          expect(this.subject.needed_shots).toEqual(2)
        it "real_needed_shots", ->
          expect(this.subject.real_needed_shots).toEqual(2)
