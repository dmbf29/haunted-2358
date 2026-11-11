class HauntedHousesController < ApplicationController
  # /haunted_houses/1
  def show
    @haunted_house = HauntedHouse.find(params[:id])
  end
end
