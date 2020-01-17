class UsersController < ApplicationController
  include SessionsHelper
  helper :all
  def show
    if session[:user_id]
      @user = User.find(params[:id])
      @locations = @user.locations
    else
      redirect_to home_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(get_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def get_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation,
                                  :primer_apellido, :segundo_apellido, :rfc,
                                  :nombre_empresa)
  end

  def logged_in?
    !get_curr_user.nil?
  end
end
