class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.order('name ASC')
    respond_to do |f|
      f.html
      f.json {render json: @users}
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |f|
      f.html
      f.json {render json: @user}
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
