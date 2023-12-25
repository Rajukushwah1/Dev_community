# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
ActiveRecord::Base.transaction do 
  100.times do |i|
  	user = User.create(
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     username: "#{Faker::Name.first_name.downcase}_ #{i+10}",
     email: Faker::Internet.email,
     contact_number: Faker::PhoneNumber.phone_number_with_country_code, 
     street_address: Faker::Address.street_address, 
     city: Faker::Address.city, 
     state: Faker::Address.state, 
     country: Faker::Address.country, 
     pincode: Faker::Address.postcode, 
     date_of_birth: (Date.today + rand(1..30).days) - rand(24..36).years,
     profile_title: User::PROFILE_TITLE.sample,
     password: "password",
     about: "Topic sentences are similar to mini thesis statements. Like a thesis statement, a topic sentence has a specific main point. Whereas the thesis is the main point of the essay, the topic sentence is the main point of the paragraph. Like the thesis statement, a topic sentence has a unifying function. But a thesis statement or topic sentence alone doesn’t guarantee unity. An essay is unified if all the paragraphs relate to the thesis, whereas a paragraph is unified if all the sentences relate to the topic sentence. Note: Not all paragraphs need topic sentences. In particular, opening and closing paragraphs, which serve different functions from body paragraphs, generally don’t have topic sentences."

  	)

  	puts "User #{i+1} created successfully."
  end 
end