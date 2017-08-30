class StocksController < ApplicationController
  before_action :find_stock, only: [:show, :edit, :update, :destroy]

  def index
  	@stocks = Stock.all
  end

  def show
  end

  def new
  	@stock = Stock.new
  end

  def edit
  end

  def create
  	@stock = Stock.new(stock_params)
  	if @stock.save
  		redirect_to @stock
  	else
  		render :new
  	end
  end

  def update
  	if @stock.update_attributes(stock_params)
  		redirect_to @stock
  	else
  		render :edit
  	end
  end

  def destroy
  	@stock.destroy
    redirect_to stocks_path
  end

  private
  def find_stock
  	@stock = Stock.find(params[:id])
  end

  def stock_params
  	params.require(:stock).permit(:drink_id, :ammount)
  end
end
