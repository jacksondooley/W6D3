class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to users_post(@user)
    else
      @user.errors.full_messages
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
  user = User.new(params.require(:user).permit(:username))  
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:username))
      redirect_to users_url(@user)
    else
      render json: user.errors.full_messages
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end

end