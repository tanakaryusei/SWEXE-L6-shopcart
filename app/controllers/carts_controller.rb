class CartsController < ApplicationController
  def show
    @cartitems = Cartitem.where(cart_id: current_cart.id)
  end
  
  def destroy
    cartitem = Cartitem.find(params[:id])
    cartitem.destroy
    redirect_to controller: :carts, action: :show, id: 1
  end
end
