class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  private
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = t(:login_notice)
      redirect_to root_path
    end
  end

  def require_super
    unless current_user.supervisor?
      flash[:danger] = t(:super_notice)
      redirect_to root_path
    end
  end
end
