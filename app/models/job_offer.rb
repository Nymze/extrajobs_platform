class JobOffer < ApplicationRecord
	has_many :candidacies 
	has_many :users, through: :candidacies
	belongs_to :userpro
end
