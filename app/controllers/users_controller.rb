class UsersController < ApplicationController
before_action :authenticate_user!
  
  def dashboard
  	@job_offers = JobOffer.all
  end

  def apply_for_job
  	job_offer = JobOffer.find(params[:job_offer_id])
  	current_user.job_offers << job_offer
  	redirect_to user_dashboard_path
  end
  	
  def cancel_job_candidacy
  	job_offer = JobOffer.find(params[:job_offer_id])
  	current_user.job_offers.delete(job_offer)
  	redirect_to user_dashboard_path
  end

end
