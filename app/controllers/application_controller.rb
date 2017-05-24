class ApplicationController < ActionController::Base

  protect_from_forgery prepend: true

  def after_sign_in_path_for(users)
    shops_path
  end

  def after_sign_in_path_for(owners)
    shops_path
  end

end
