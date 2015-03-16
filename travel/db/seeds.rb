# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create([
  { first_name: "Tiffany",  last_name: "Poss",    username: "female", email: "tposs@gmail.com",       password: "password"},
  { first_name: "Sage",     last_name: "Kieran",  username: "male",   email: "sagekieran@gmail.com",  password: "password"},
  { first_name: "Mike",     last_name: "Rembach", username: "male",   email: "mikerembach@gmail.com", password: "password"},
  { first_name: "Sade",     last_name: "Stevens", username: "Female", email: "sadestevens@gmail.com", password: "password"}
])

Trip.create([
  { group_id: Group.find_by(user_id: "4"), user_id: User.find_by(email: "sadestevens@gmail.com").id, location: "Mexico", title: "Spring Break", description: "going to Mexico City and getting crazy, but not too crazy!", duration: "April 10, 2015 - April 14, 2015"}
])

Suggestion.create([
  { user_id: User.find_by(email: "tposs@gmail.com").id,      category_id: "1", title: "Food",      title: "Spring Break", title: "Los Caballos",       content: "amazingly delicious according to reviews",
    link: "http://shechive.files.wordpress.com/2011/07/mexican-food-14.jpg",                                                                 upvote: "0", downvote: "0"},
  { user_id: User.find_by(email: "sagekieran@gmail.com").id, category_id: "2", title: "lodging",   title: "Spring Break", title: "Hostel Airport Mexico DF", content: "we can stay here, it's a cool place to meet other travelers",
    link: "http://u.hwstatic.com/propertyimages/4/41518/2.jpg",                                                                              upvote: "0", downvote: "0"},
  { user_id: User.find_by(email: "mikerembach@gmail.com").id,category_id: "3", title: "Adventure", title: "Spring Break", title: "Beach",              content: "this is the best beach & closest to the city, let's do this the first day!?",
    link: "http://activerain.com/image_store/uploads/4/8/8/9/8/ar123636422589884.jpg",                                                       upvote: "0", downvote: "0"},
  { user_id: User.find_by(email: "sadestevens@gmail.com").id,category_id: "3", title: "Adventure", title: "Spring Break", title: "Horse riding tour",        content: "this place looks pretty cool from the pictures, we should check it out at some point",
    link: "http://www.dosomethingdifferent.com/images/store/experience/landscape_image/1828/Horseback_Riding_In_The_Jungle8.jpg?1308854312", upvote: "0", downvote: "0"}
])

Category.create([
  { name: "Food"      trip_id: "1"}
  { name: "Lodging"   trip_id: "1"}
  { name: "Adventure" trip_id: "1"}
])

