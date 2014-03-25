class FosterController < ApplicationController
  def agreement
    @selected_pet = Pet.find(params[:id])
  end

  def confirmation
    @selected_pet = Pet.find(params[:id])
  end
end
