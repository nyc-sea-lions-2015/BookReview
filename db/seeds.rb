require 'faker'

me = User.create({name: "Eveanandi", email: "blossom@gmail.com", password: "1234"})

user_2 = User.create({name: "Danielle", email: "pearl@gmail.com", password: "1234"})

my_review = Review.create({book_title: "Where The Sidewalk Ends", author: "Shel Silverstein", start_date: "2014-04-22", finish_date: "2014-04-25", review_content: Faker::Lorem.paragraph, book_rating: 5, user_id: 1})

her_review = Review.create({book_title: "Dracula", author: "Bram Stoker", start_date: "2014-04-20", finish_date: "2014-04-26", review_content: Faker::Lorem.paragraph(10), book_rating: 4, user_id: 2})

my_review_2 = Review.create({book_title: "White Oleander", author: "Janet Fitch", start_date: "2013-03-12", finish_date: "2013-04-01", review_content: Faker::Lorem.paragraph(10), book_rating: 5, user_id: 1})


my_comment = Comment.create(content: Faker::Lorem.sentence, user_id: 1, review_id: 2)

her_comment = Comment.create(content: Faker::Lorem.sentence, user_id: 2, review_id: 1)


