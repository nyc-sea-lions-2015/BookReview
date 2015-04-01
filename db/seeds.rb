require 'faker'

me = User.create({name: "Eveanandi", email: "blossom@gmail.com", password: "1234"})

user_2 = User.create({name: "Danielle", email: "pearl@gmail.com", password: "1234"})

my_review = Review.create({book_title: "Where The Sidewalk Ends", author: "Shel Silverstein", start_date: "2014-04-22", finish_date: "2014-04-25", review_content: Faker::Lorem.paragraph, book_rating: 5, user_id: 1})


