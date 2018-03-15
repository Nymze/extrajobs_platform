# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
########################################################################################


########################################################################################
# USERS
########################################################################################

  user_1 = User.create(email: "extra_1@test.com", password: 'super123', password_confirmation: 'super123')
  user_2 = User.create(email: "extra_2@test.com", password: 'super123', password_confirmation: 'super123')

########################################################################################


########################################################################################
# USERPROS
########################################################################################

  userpro_1 = Userpro.create(email: "restau_1@test.com", password: 'super123', password_confirmation: 'super123')
  userpro_2 = Userpro.create(email: "restau_2@test.com", password: 'super123', password_confirmation: 'super123')

#######################################################################################


########################################################################################
# JOB OFFERS
########################################################################################
	i = 1
  10.times do |create_offer|
		if i % 2 == 0
		  job_offer = JobOffer.create(userpro_id: 1, title: "Offre numéro #{i}", description: 'Très longue description qui donne envie')
		else
		  job_offer = JobOffer.create(userpro_id: 2, title: "Offre numéro #{i}", description: 'Très longue description qui donne envie')
		end
	  i += 1
	end
########################################################################################
