class ApplicationController < ActionController::Base

  def authorize_admin!
    unless current_user.admin?
      if user_signed_in?
        redirect_to root_path, notice: "You must be a Peter in to access this section"
      else
        redirect_to new_user_session_url, notice: "You must be a Peter in to access this section"
      end
    end
  end


end
