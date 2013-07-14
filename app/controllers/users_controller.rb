class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, :notice => "You successfully registered!"
    else
      render "users/new", :notice => "Something went wrong!"
    end
  end

  def edit
    @user = User.find(params[:email])
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(params[:user])
      redirect_to products_url, :notice => "Profile was successfully updated"
    else
      render "show"
    end
  end

  def show
  end

  def index
  end

  def destroy
  end

end
