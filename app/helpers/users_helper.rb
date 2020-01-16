module UsersHelper
  def logged_in?
    !@curr_user.nil?
  end
end
