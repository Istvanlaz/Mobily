class Api::V1::OrdersController < ActionController::Base

  def index
    @orders = Order.all
    render json: @orders
  end
end
