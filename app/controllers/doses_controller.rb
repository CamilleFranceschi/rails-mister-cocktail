class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    # @ingredient = Ingredient.find(params[:dose][:ingredient])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail


    # @dose.ingredient = @ingredient
    # @dose.save

    if @dose.save
      redirect_to cocktail_path(@cocktail)
      #toujours avec path un @
    else
      render 'cocktails/show'
    end
  end

  def destroy

    @dose = Dose.find(params[:id].to_i)
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)

  end



end
