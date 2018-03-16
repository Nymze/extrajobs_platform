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

require 'rails_helper'

RSpec.describe Candidacy, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
