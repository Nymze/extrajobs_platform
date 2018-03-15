# == Schema Information
#
# Table name: candidacies
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  job_offer_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Candidacy < ApplicationRecord

	belongs_to :user
	belongs_to :job_offer

	validates :job_offer, uniqueness: {scope: :user}

end
