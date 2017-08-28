class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def new
  end

  def edit
  end

  def crate
  end

  def update
  end

  def destroy
  end

  private
  def drink_params
    # make strong params here
  end
end
