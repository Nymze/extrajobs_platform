class CandidaciesController < ApplicationController

	def index
    @candidacy = Candidacy.all
  end

  def new
    @candidacy = Candidacy.new(candidacy_params)
  end

  def create
   

 @candidacy = Candidacy.new(candidacy_params)
 @candidacy.user_id = current_user.id 
 @candidacy.save


  end

def show
    
    @candidacy = Candidacy.all
  end


private

  def candidacy_params
    params.require(:candidacy).permit(:user_id, :job_offer_id)
  end


end
