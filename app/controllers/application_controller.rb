class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def after_sign_in_path_for(devise_for)
  if devise_for.is_a?(User)
    job_offers_index_path 
  else
    static_pages_userprohome_path 
  end
end


end
