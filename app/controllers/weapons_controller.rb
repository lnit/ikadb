class WeaponsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { get_weapons }
    end
  end

  private
  def get_weapons
    @weapons = Weapon.ransack(params[:q]).result
  end
end
