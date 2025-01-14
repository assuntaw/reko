# require helper functions located in same directory
require_relative 'seeds_helper' # in console run this: $ require_relative 'db/seeds_helper'

# WELCOME
welcome_message

# RESET DATABASE
reset_database

# CREATE USERS
create_user(admin: true, password: "123456", first_name: "admin",  last_name: "admin", email: "admin@admin.com")
create_user(admin: true, password: "123456", first_name: 'Allan',   last_name: 'Holmes',     email: 'allan.homes@me.com')
create_user(admin: true, password: "123456", first_name: 'Assunta', last_name: 'Waldorf',    email: 'sunti@mail.com')
create_user(admin: true, password: "123456", first_name: 'Thilo',   last_name: 'Somthing',   email: 'thiloooo@reko.com')
create_user(admin: true, password: "123456", first_name: 'Thomas',  last_name: 'Starzynski', email: 'thommy-star@hotmail.com')
# create_user(password: "123456", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email)
# create_user(password: "123456", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email)
# create_user(password: "123456", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email)

# CREATE PREFERENCES
Preference.create!(name: "Movies")
Preference.create!(name: "Documentaries")
Preference.create!(name: "Series")
create_user_preferences # randomly assign user preferences for all users

# POPULATE RECOMMENDABLE
# seed itunes API for movies (documentaries included)
# keywords = [
#   "Blackfish",
#   "Strangers",
#   "Supersize me",
#   "inside Job",
#   "Evolution",
#   "After Passion",
#   "Aladdin",
#   "Avengers",
#   "Black Panther",
#   "Matrix",
#   "Harry Potter",
#   "Spotlight",
#   "Star Wars",
#   "Godfather",
#   "Logan",
#   "Gravity",
#   "Spider Man",
#   "Die Hard",
# ]
# keywords.each do |keyword|
#   recommendables = ItunesApiCallService.new(keyword).call
#   save_recommendables(recommendables)
# end

# CREATE RANDOM REKOS (only for nonadmin fake users) (argument = number of rekos per user)
# create_fake_rekos_for_nonadmin_users(10)

# CREATE RANDOM BETA APPLICANTS (just mail needed) (argument = number of applicants)
# create_beta_applicants(20)

# # dispaly end message to console
end_message
