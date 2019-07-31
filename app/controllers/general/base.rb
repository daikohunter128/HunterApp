class General::Base < ApplicationController
  private
  def current_general
    if session[:general_id]
      @current_general ||=
        General.find_by(id: session[:general_id])
    end
  end
  
  helper_method :current_general
end