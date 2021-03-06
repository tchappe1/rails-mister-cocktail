class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
    @cocktail = Cocktail.find(params[:id].to_i)
  end

  def create
  @cocktail = Cocktail.new(cocktail_params)
  @cocktail.save

  redirect_to cocktails_path
  end

  def update
  @cocktail = Cocktail.find(params[:id].to_i)
  @cocktail.update(cocktail_params)
  redirect_to cocktails_path
end

private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end


end
