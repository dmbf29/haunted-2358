class MonstersController < ApplicationController
  # haunted_houses/2/monsters/new
  def new
    @monster = Monster.new
    @haunted_house = HauntedHouse.find(params[:haunted_house_id])
  end

  # POST (aka form) # haunted_houses/2/monsters
  def create
    @haunted_house = HauntedHouse.find(params[:haunted_house_id])
    @monster = Monster.new(monster_params)
    @monster.haunted_house = @haunted_house
    if @monster.save
      redirect_to haunted_house_path(@haunted_house)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to haunted_house_path(@monster.haunted_house), status: :see_other
  end

  private

  def monster_params
    # strong params
    params.require(:monster).permit(:name, :category, :image_url)
  end
end
