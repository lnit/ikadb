class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end
end
