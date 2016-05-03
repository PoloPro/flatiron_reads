# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

moby_dick = Book.create(title: "Moby Dick", image_url: "", synopsis: "A whale eats a guy.")
pp = Book.create(title: "Pride and Prejudice", image_url: "", synopsis: "Keira Knightley runs in the rain.")
bride = Book.create(title: "Princess Bride", image_url: "", synopsis: "a tale of true love and high adventure, pirates, princess, giants, miracles, fencing")

melville = Author.create(name: "Herman Melville")
austen = Author.create(name: "Jane Austen")
goldman = Author.create(name: "William Goldman")

review_1 = Review.create(rating: 4, description: "It was pretty good.")
review_2 = Review.create(rating: 2, description: "It was totally meh.")
review_3 = Review.create(rating: 3, description: "It was about average.")

user_1 = User.create(name: "Wes")
user_2 = User.create(name: "Angie")
user_3 = User.create(name: "Steven")

bride.author = goldman
pp.author = austen
moby_dick.author = melville

bride.review = review_1
pp.review = review_2
moby_dick.review = review_3

review_1.user = user_1
review_2.user = user_2
review_3.user = user_3
