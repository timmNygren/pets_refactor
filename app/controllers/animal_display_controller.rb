class AnimalDisplayController < ApplicationController
  include CurrentConsidering
  before_action :set_considering
  def index
    @pets = Pet.all
  end

  def sort_by_name
    @pets = Pet.order(:name)
    render_index
  end

  def sort_by_age
    @pets = Pet.order(:age)
    render_index
  end

  def sort_by_name_reverse
    @pets = Pet.order(:name).reverse
    render_index
  end

  def sort_by_age_reverse
    @pets = Pet.order(:age).reverse
    render_index
  end

  def render_index
    render :action => "index"
  end
end
