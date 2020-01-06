class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = @cocktail.doses
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @dose = Dose.create(description: doses_params[:description],
                        ingredient: Ingredient.find(doses_params[:ingredient]),
                        cocktail: Cocktail.find(params[:cocktail_id]))
    redirect_to new_cocktail_dose_path(params[:cocktail_id])
  end

  private

  def doses_params
    params.require(:dose).permit(:description, :ingredient, :cocktail)
  end
end
