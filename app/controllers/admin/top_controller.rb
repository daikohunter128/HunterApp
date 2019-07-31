class Admin::TopController < Admin::Base
  skip_before_action :authorize
  
  def index
    if current_administrator
      if current_administrator.id == 1
        render action: 'dashboard'
      else
        render action: 'dashboard1'
      end
    else
      render action: 'index'
    end
  end
end
