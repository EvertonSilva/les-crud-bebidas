class SuppliersController < ApplicationController
  def index
    @supplers = Supplier.all
  end

  def show
  end

  def new
    @suppler = Supplier.new
  end

  def edit
  end
end
