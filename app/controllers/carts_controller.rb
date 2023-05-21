class CartsController < ApplicationController
  def show
    cart = Cart.find(params[:id])
    render json: CalculateService.new(cart).call
  end
end