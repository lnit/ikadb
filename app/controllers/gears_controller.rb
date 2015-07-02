class GearsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { get_gears }
    end
  end

  private
  def get_gears
    @gears = Gear.ransack(params[:q]).result
  end
end
