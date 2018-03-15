# == Schema Information
#
# Table name: job_offers
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  city        :string
#  category    :string
#  skills      :string
#  experience  :integer
#  date        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  userpro_id  :integer
#

class JobOffer < ApplicationRecord
	
	belongs_to :userpro
	
	has_many :candidacies 
	has_many :users, through: :candidacies
	
end
