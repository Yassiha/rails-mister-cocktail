class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = @cocktail.doses
    @dose = Dose.new
    ingredients = Ingredient.all
    @ingredients = ingredients
    btn_msg
    are_you_done
    title_ingredients
  end

  def create
    @dose = Dose.create(description: doses_params[:description],
                        ingredient: Ingredient.find(params[:ingredient]), # <<== is it safe ???
                        cocktail: Cocktail.find(params[:cocktail_id]))
    sleep 1
    redirect_to new_cocktail_dose_path(params[:cocktail_id])
  end

  def destroy
    @dose = Dose.find(params[:cocktail_id])
    @dose.destroy
    sleep 0.5

    redirect_to new_cocktail_dose_path(@dose.cocktail)
  end

  private

  def doses_params
    params.require(:dose).permit(:description, :ingredient, :cocktail)
  end

  def btn_msg
    @btn_msg =
      if @doses.empty? || @doses.count == 1
        'Back'
      else
        'Validate Mixture'
      end
  end

  def are_you_done
    @are_you_done =
      if @doses.empty?
        "Let's get started!"
      elsif @doses.count <= 2
        'Booooring!'
      elsif @doses.count > 2 && @doses.count < 5
        'Now we are talking!'
      else
        "Can't wait to try it!"
      end
  end

  def title_ingredients
    @title_ingredients =
      if @doses.empty?
        ''
      else
        'Ingredients: '
      end
  end
end
