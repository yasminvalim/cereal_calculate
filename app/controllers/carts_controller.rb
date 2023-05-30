# PRO: Clean controller, nice
class CartsController < ApplicationController
  def show
    # CON: In case the cart does not exist on the local
    # database, it would raise an error and not calculate
    # the final discount although the JSON has all the
    # information required to perform the calculation.
    cart = Cart.find(params[:id])
    render json: CalculateService.new(cart).call
  end
end
