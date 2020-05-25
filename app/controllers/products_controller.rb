class ProductsController < ApplicationController

  def index
    @products = Product.includes(:images).order('created_at DESC')
  end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
  
end
