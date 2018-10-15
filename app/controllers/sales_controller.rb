class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
  end

  def show
    @sale = Sale.find params[:id]
  end
end
