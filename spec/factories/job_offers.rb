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

FactoryBot.define do
  factory :job_offer do
    title "MyString"
    description "MyText"
    city "MyString"
    category "MyString"
    skills "MyString"
    experience 1
    date "2018-03-13 14:26:28"
  end
end
