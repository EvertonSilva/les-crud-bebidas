class DrinksController < ApplicationController
  before_action :find_drink, only: [:show, :edit, :update, :destroy]

  def index
    @drinks = Drink.all
  end

  def show
  end

  def new
    @drink = Drink.new
  end

  def edit
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
    if @drink.update_attributes(drink_params)
      redirect_to @drink
    else
      render :new
    end
  end

  def destroy
    @drink.destroy
    redirect_to action: "index"
  end

  private
  def find_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:name, :expiration_date, :manufacture_date, :alcoholic_content)
  end
end
