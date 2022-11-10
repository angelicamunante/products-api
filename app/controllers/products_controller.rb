class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])

    render json: @q.result
  end
end
