class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find(params[:email])
    if @user && @user.authentication(params[:email])
      session[:user_id] = @user.id
      redirect_to user_path, :notice => "Welcome back, #{user.email}! Time to Eat!" #We want this to go to the user's dashboard page.
    else
      flash.now.alert = "Invalid email or password"
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:email])
  end

  def update
  end

  def show
  end

  def index
  end

  def destroy
  end

end
