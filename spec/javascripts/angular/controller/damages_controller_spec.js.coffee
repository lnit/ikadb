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

  describe "validate(p)", ->
    beforeEach ->
      this.p = @scope.params
      this.subject = ->
        @scope.validate(this.p)
      this.expect_true = ->
        expect(this.subject()).toEqual(true)
      this.expect_false = ->
        expect(this.subject()).toEqual(false)

    it "default", ->
      this.expect_true()
    describe "check null", ->
      it "attack_main", ->
        this.p.attack_main = null
        this.expect_false()
      it "attack_sub", ->
        this.p.attack_sub = null
        this.expect_false()
      it "defense_main", ->
        this.p.defense_main = null
        this.expect_false()
      it "defense_sub", ->
        this.p.defense_sub = null
        this.expect_false()
    describe "境界値検査", ->
      beforeEach ->
        this.checker = (attr, min, max) ->
          this.p[attr] = min
          this.expect_true()
          this.p[attr] = min - 1
          this.expect_false()
          this.p[attr] = max
          this.expect_true()
          this.p[attr] = max + 1
          this.expect_false()
      it "attack_main", ->
        this.checker("attack_main",0,3)
      it "attack_sub", ->
        this.checker("attack_sub",0,9)
      it "defense_main", ->
        this.checker("defense_main",0,3)
      it "defense_sub", ->
        this.checker("defense_sub",0,9)

  describe "calculate()", ->
    it "validate", ->
      @scope.params.attack_main = -1
      @scope.calculate()
      expect(@scope.params.power).toEqual(1)

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
