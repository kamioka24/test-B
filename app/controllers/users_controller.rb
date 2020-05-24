class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
  	@user = User.find(params[:id])
  	@book = Book.new
  	@books = @user.books #なぜbooksが使える？
  end

  def index
  	@user = User.find(current_user)
  	@users = User.all
  	@book = Book.new
  end

  def edit
  end
end
