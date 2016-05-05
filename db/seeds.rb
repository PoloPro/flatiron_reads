# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

moby_dick = Book.create(title: "Moby Dick", image_url: "http://tewt.org/wp-content/uploads/2015/07/moby-dick.jpg", synopsis: "A whale eats a guy.")
pp = Book.create(title: "Pride and Prejudice", image_url: "https://www.penguin.com.au/jpg-large/9780141439518.jpg", synopsis: "Keira Knightley runs in the rain.")
bride = Book.create(title: "Princess Bride", image_url: "http://deliberatereader.com/wp-content/uploads/2015/08/The-Princess-Bride-1998-25th-Anniversary-Hardcover.jpg", synopsis: "a tale of true love and high adventure, pirates, princess, giants, miracles, fencing")

melville = Author.create(name: "Herman Melville")
austen = Author.create(name: "Jane Austen")
goldman = Author.create(name: "William Goldman")

review_1 = Review.create(rating: 4, description: "It was pretty good.")
review_2 = Review.create(rating: 2, description: "It was totally meh.")
review_3 = Review.create(rating: 3, description: "It was about average.")

user_1 = User.create(name: "Wes", profile_picture: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/8/005/08e/337/1085234.jpg")
user_2 = User.create(name: "Angie", profile_picture: "https://lh5.googleusercontent.com/-ESD28wnkAts/AAAAAAAAAAI/AAAAAAAACqo/ZCIwLlgI_rQ/photo.jpg")
user_3 = User.create(name: "Steven", profile_picture: "https://avatars2.githubusercontent.com/u/325485?v=3&s=400")

bride.author = goldman
pp.author = austen
moby_dick.author = melville

bride.reviews.build(rating: 4, description: "It was pretty good.", user_id: user_1.id )
pp.reviews.build(rating: 2, description: "It was totally meh.", user_id: user_2.id )
moby_dick.reviews.build(rating: 3, description: "It was about average.", user_id: user_3.id )

bride.save
pp.save
moby_dick.save

review_1.save
review_2.save
review_3.save

melville.save
austen.save
goldman.save


