class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def ensure_admin
    if current_user.role != "Admin"
      redirect_to root_path, :notice => "You do not have permission to access this page"
    end
  end
end
