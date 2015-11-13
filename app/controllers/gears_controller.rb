class GearsController < ApplicationController
  def index
    flash.now[:notice] = I18n.t("flash.gear")
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
