class Weapons::MainWeaponsController < ApplicationController
  def index
    respond_to do |format|
      format.json { get_main_weapons }
    end
  end

  private
  def get_main_weapons
    @main_weapons = MainWeapon.ransack(params[:q]).result
  end
end
