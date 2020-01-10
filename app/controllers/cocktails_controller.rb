class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktails = Cocktail.all
    check_name = true
    @cocktails.each do |cocktail|
      check_name = false if cocktail.name == cocktail_params[:name]
    end

    check_name = false if cocktail_params[:name].strip == ''
    if check_name == false
      redirect_to new_cocktail_path
    else
      @cocktail = Cocktail.create(cocktail_params)
      sleep 1.5
      redirect_to new_cocktail_dose_path(@cocktail)
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    sleep 1

    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
