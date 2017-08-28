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
    @cat = Category.new(cat_params)
    if @cat.save
      redirect_to @cat
    else
      render :new
    end
  end

  def update
    if @cat.update_attributes(cat_params)
      redirect_to @cat
    else
      render :new
    end
  end

  def destroy
    @cat.destroy
    redirect_to categories_path
  end

  private
  def find_category
    @cat = Category.find(params[:id])
  end

  def cat_params
    params.require(:category).permit(:name, :desc)
  end
end
