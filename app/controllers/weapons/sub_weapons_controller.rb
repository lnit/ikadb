class Weapons::SubWeaponsController < ApplicationController
  def index
    respond_to do |format|
      format.json { get_sub_weapons }
    end
  end

  private
  def get_sub_weapons
    @sub_weapons = SubWeapon.ransack(params[:q]).result
  end
end
