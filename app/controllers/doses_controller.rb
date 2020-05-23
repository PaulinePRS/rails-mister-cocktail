class DosesController < ApplicationController
    def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @dose
    @dose.save

    redirect_to dose_path(@dose)

  end

  def destroy
      @dose = Dose.find(params[:id])
      @dose.destroy
      redirect_to doses_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end

end

end
