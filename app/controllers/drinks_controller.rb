class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def new
    @drink = Drink.new
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to @drink
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def drink_params
    params.require(:drink).permit(:name, :expiration_date, :manufacture_date, :alcoholic_content)
  end
end
