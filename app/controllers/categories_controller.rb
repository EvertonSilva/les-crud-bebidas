class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :update, :destroy]

  def index
    @cats = Category.all
  end

  def show
  end

  def new
    @cat = Category.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def find_category
    @cat = Category.find(params[:id])
  end
end
