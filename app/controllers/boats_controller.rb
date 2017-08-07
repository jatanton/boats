class BoatsController < ApplicationController

  def index
  end

  def show

  end

  def new
    @boat = Boat.new
  end

  def edit

  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save

    flash[:success] = "Boat has been created."
    redirect_to boats_path
  end

  def update

  end

  def delete

  end

  private

    def boat_params
      params.require(:boat).permit(:manufacturer, :model, :price, :displacement, :lwl, :beam, :ballast)
    end
end
