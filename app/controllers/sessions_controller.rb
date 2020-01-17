class SessionsController < ApplicationController
  include SessionsHelper

  def login
  end

  def signup
  end

  def home
    if logged_in?
      redirect_to @curr_user
    end
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to @user
    else
      render 'login'
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end

end
