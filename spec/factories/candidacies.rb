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

FactoryBot.define do
  factory :candidacy do
    user_id 1
    job_offer_id 1
  end
end
