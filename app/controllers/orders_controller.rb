class OrdersController < ApplicationController
  def index
    @orders = Order.includes(:product).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
  end

  def destory
  end
end