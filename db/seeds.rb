# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all
Like.destroy_all


u1 = User.create(name: "Paul", username: "paul123", password:"paul123", bio: "I like turtles", photo_url: "" )
u2 = User.create(name: "Gian", username: "gian123", password:"gian123", bio: "I'm tired", photo_url: "" )
u3 = User.create(name: "Anam", username: "anam123", password:"anam123", bio: "Happy Friday!", photo_url: "" )
u4 = User.create(name: "Mitchell", username: "mitchell123", password:"mitchell123", bio: "I don't know about this guys bio", photo_url: "" )
u5 = User.create(name: "Placido", username: "placido123", password:"placido123", bio: "Player of Dota", photo_url: "" )
u6 = User.create(name: "Cornelius", username: "cornelius123", password:"cornelius123", bio: "pretty quiet most of the time.", photo_url: "" )
u7 = User.create(name: "Somaia", username: "somaia123", password:"somaia123", bio: "Doesn't do well with speaking in front of people", photo_url: "" )
u8 = User.create(name: "Caleb", username: "caleb123", password:"caleb123", bio: "Grew up in a cult but he is alright now.", photo_url: "" )
u9 = User.create(name: "George", username: "george123", password:"george123", bio: "Mother Russia!!", photo_url: "" )
u10 = User.create(name: "Stephen", username: "stephen123", password:"stephen123", bio: "Stephen with a PH", photo_url: "" )
u11 = User.create(name: "Vien", username: "vien123", password:"vien123", bio: "I don't know", photo_url: "" )
u12 = User.create(name: "Blake", username: "blake123", password:"blake123", bio: "Yeah dawg", photo_url: "" )
u13 = User.create(name: "Steven", username: "steven123", password:"steven123", bio: "Steven with a v", photo_url: "" )
u14 = User.create(name: "Raul", username: "raul123", password:"raul123", bio: "Like Paul but with an r and not as cool.", photo_url: "" )
u15 = User.create(name: "Vidhi", username: "vidhi123", password:"vidhi123", bio: "Good Morning Everyone", photo_url: "" )

c1 = Category.create(name: "Sports")
c2 = Category.create(name: "Movies")
c3 = Category.create(name: "Code")
c4 = Category.create(name: "Music")
c5 = Category.create(name: "Fitness")
c6 = Category.create(name: "Video Games")
c7 = Category.create(name: "Cooking")
c8 = Category.create(name: "Animals")
c9 = Category.create(name: "Events")
c10 = Category.create(name: "News")


p1 = Post.create(title: "")