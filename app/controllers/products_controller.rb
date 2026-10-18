class ProductsController < ApplicationController
  def index
  @products = Product.includes(:category).all

    if params[:search].present?
      @products = @products.where(
        "LOWER(title) LIKE ?",
        "%#{Product.sanitize_sql_like(params[:search].downcase)}%"
      )
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end