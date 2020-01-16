module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def get_curr_user
    if session[:user_id]
      @curr_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !get_curr_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @curr_user = nil
  end
end
