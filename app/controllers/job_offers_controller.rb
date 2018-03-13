class JobOffersController < ApplicationController
  def index
	@JobOffers = JobOffer.all
end

def new
	@JobOffer = JobOffer.new
end

def create
	@JobOffer = JobOffer.new(params.require(:job_offer).permit(:title, :description, :city, :category, :skills, :experience, :date))
if @JobOffer.save
	redirect_to root_path
else
	render 'new'
end

end

def show
   @JobOffer = JobOffer.find(params[:id])

end 

end
