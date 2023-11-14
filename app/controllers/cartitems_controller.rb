class CartitemsController < ApplicationController
  def new
    @cart_id = current_cart.id
    @product_id = params[:product_id]
    @cartitem = Cartitem.new
  end

  def create
    @cart_id = params[:cartitem][:cart_id]
    @product_id = params[:cartitem][:product_id]
    @qty = params[:cartitem][:qty]
    c = Cartitem.new(cart_id: @cart_id, product_id: @product_id, qty: @qty)
    c.save
    redirect_to root_path
    #cartitem = Cartitem.new(cart_id: params[:cartitem][:cart_id],product_id: params[:cartitem][:product_id],qty: params[:cartitem][:qty], )
    #cartitem.save
    #redirect_to controller: :carts, action: :show, id: 1
  end

  def destroy
  end
end
