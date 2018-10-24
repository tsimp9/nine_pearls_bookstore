class SalesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book, except: [:index]

  def index
    @sales = current_user.sales
    # or use @sales = Sale.where(user:current_user)
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.create(book:params[:book_id])
    # @sale = Sale.new(book: @book, user: current_user)
    redirect_to sales_path
  end

  def show
    @sale = Sale.find params[:id]
  end

private

  def load_book
    @book = Book.find(params[:book_id])
  end

end

# index code - returns sales for the current user
# Sale = the class
# Need to use the name of the association since we are only concerned with
# the current user. Use current_user.sales instead of Sale.all


# def new = a get request
# redirect to a path helper - the sales helper
