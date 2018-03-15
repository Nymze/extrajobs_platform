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

require 'rails_helper'

RSpec.describe JobOffer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
