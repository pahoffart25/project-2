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


u1 = User.create(name: "Paul", username: "paul123", password:"paul123", bio: "I like turtles", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UT0CKBCEA-68204ed2834e-192" )
u2 = User.create(name: "Gian", username: "gian123", password:"gian123", bio: "I'm tired", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UT02BF45V-d2c2929beb02-72" )
u3 = User.create(name: "Anam", username: "anam123", password:"anam123", bio: "Happy Friday!", photo_url: "https://miro.medium.com/fit/c/96/96/2*Zja9YCjezeZ0BxU1YYR2hQ.jpeg" )
u4 = User.create(name: "Mitchell", username: "mitchell123", password:"mitchell123", bio: "I don't know about this guys bio", photo_url: "https://ca.slack-edge.com/T02MD9XTF-USN0UKEF3-ga7f1b91df9c-192" )
u5 = User.create(name: "Placido", username: "placido123", password:"placido123", bio: "Player of Dota", photo_url: "https://ca.slack-edge.com/T02MD9XTF-USXNH137E-89dd6e280ab5-192" )
u6 = User.create(name: "Cornelius", username: "cornelius123", password:"cornelius123", bio: "pretty quiet most of the time.", photo_url: "https://ca.slack-edge.com/T02MD9XTF-USY6SP64V-fa39ad136590-192" )
u7 = User.create(name: "Somaia", username: "somaia123", password:"somaia123", bio: "Doesn't do well with speaking in front of people", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UT57884MV-c55aef9cb1a8-72" )
u8 = User.create(name: "Caleb", username: "caleb123", password:"caleb123", bio: "Grew up in a cult but he is alright now.", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UT02BHX47-1e2b6e51a86d-192" )
u9 = User.create(name: "George", username: "george123", password:"george123", bio: "Mother Russia!!", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UT0CK9T0W-4af6961d5e2f-192" )
u10 = User.create(name: "Stephen", username: "stephen123", password:"stephen123", bio: "Stephen with a PH", photo_url: "https://ca.slack-edge.com/T02MD9XTF-USLN1N0SX-639efefc59a2-192" )
u11 = User.create(name: "Vien", username: "vien123", password:"vien123", bio: "I don't know", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UT0CKCHM4-d85747745415-192" )
u12 = User.create(name: "Blake", username: "blake123", password:"blake123", bio: "Yeah dawg", photo_url: "https://miro.medium.com/fit/c/96/96/2*Fin-5SlgHQk_Kz8rpKscxw.jpeg" )
u13 = User.create(name: "Steven", username: "steven123", password:"steven123", bio: "Steven with a v", photo_url: "https://ca.slack-edge.com/T02MD9XTF-ULVNA5PMK-bca9a3007ed0-72" )
u14 = User.create(name: "Raul", username: "raul123", password:"raul123", bio: "Like Paul but with an r and not as cool.", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UJ9CHTFG9-35b3f11767f4-192" )
u15 = User.create(name: "Vidhi", username: "vidhi123", password:"vidhi123", bio: "Good Morning Everyone", photo_url: "https://ca.slack-edge.com/T02MD9XTF-UC3ERUJ02-b5539e15f97e-192" )

c1 = Category.create(name: "Sports", photo_url:"https://cdn.worldvectorlogo.com/logos/sports.svg")
c2 = Category.create(name: "Movies", photo_url:"https://funender.com/wp-content/uploads/2019/10/Movies-to-watch-when-you-want-to-laugh-hard.jpg")
c3 = Category.create(name: "Code", photo_url:"https://miro.medium.com/max/1000/0*kBHpKva09AsGj7RQ")
c4 = Category.create(name: "Music", photo_url:"https://lh3.googleusercontent.com/fDqcZukIaLIrq6lSTnu5INnYDomTIs2OUWXDtjWbDbsWjD0sdzNJ-WpO0hg3uGUB_CyF")
c5 = Category.create(name: "Fitness", photo_url:"https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Galleries/10+Fitness+Tips/Muscle-confusion-is-the-only-way-to-go..jpg")
c6 = Category.create(name: "Video Games", photo_url:"https://imgix.bustle.com/uploads/image/2019/12/12/ed336be3-2ce1-4f50-9f73-967b0c9bd6d7-gettyimages-1129878609.jpg?w=1020&h=576&fit=crop&crop=faces&auto=format&q=70")
c7 = Category.create(name: "Food", photo_url:"https://www.health.harvard.edu/media/content/images/p3_MedDiet_W1806_gi667751254.jpg")
c8 = Category.create(name: "Humor", photo_url:"https://images.theconversation.com/files/144119/original/image-20161101-27102-1ibofb0.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=496&fit=clip")
c9 = Category.create(name: "Events", photo_url:"https://image.shutterstock.com/image-vector/word-events-vector-banner-text-260nw-344761211.jpg")
c10 = Category.create(name: "News", photo_url:"https://media4.s-nbcnews.com/i/newscms/2019_01/2705191/nbc-social-default_b6fa4fef0d31ca7e8bc7ff6d117ca9f4.png" )


p1 = Post.create(content: "The best movie of 2019 was Once upon a time in Hollywood not parasite..", user: u8, category: c2)
p2 = Post.create(content: "This weekend I am going to try my hand at making japanese curry, Wish me luck", user: u13, category: c7)
p3 = Post.create(content: "OT win for the rockets against the Celtics, lets go!!", user: u12, category: c1)
p4 = Post.create(content: "That new Lil Baby album is full of bangers", user: u2, category: c4)
p5 = Post.create(content: "Excited to spend my weekend catching up on my favorite Bollywood films", user: u15, category: c2)
p6 = Post.create(content: "So tilted right now, jsut got dominated in Dota because I'm a low level bot atm...", user: u5, category: c6)
p7 = Post.create(content: "I like turtles!!", user: u1, category: c8)
p8 = Post.create(content: "I wish flatiron would allow us to do yoga but they only do them once a month during our lunch hours :(", user: u3, category: c5)
p9 = Post.create(content: "Just got 22 kills in Apex GG", user: u4, category: c6)
p10 = Post.create(content: "Just got started on our Mod 2 project at flatiron, this is excited", user: u6, category: c3)
p11 = Post.create(content: "Worried about catching the coronavirus after the cases in San Antonio", user: u7, category: c10)
p12 = Post.create(content: "Если бы они только знали, что это говорит, глупые американцы", user: u9, category: c8)
p13 = Post.create(content: "Today I ate a weird orange thing where you can eat the rind and all, and I six bags of candy in my locker.", user: u10, category: c7)
p14 = Post.create(content: "Alright guys doing workout in Borg at 3pm", user: u5, category: c5)
p15 = Post.create(content: "So excited for the upcoming Britney Spears concert", user: u12, category: c9)
p16 = Post.create(content: "Got a show tonight, Can't wait to play more tappy guitar sounds", user: u14, category: c4)

Comment.create(content: "great post!!", post: p6, user: u3)
Comment.create(content: "Sounds awesome", post: p2, user: u9)
Comment.create(content: "Totally agree", post: p4, user: u3)
Comment.create(content: "What does that even mean?", post: p12, user: u14)
Comment.create(content: "Hope all goes well", post: p16, user: u11)
Comment.create(content: "Good job", post: p9, user: u10)
Comment.create(content: "Nice dude!", post: p4, user: u8)
Comment.create(content: "Same here", post: p10, user: u12)
Comment.create(content: "I'm so down!", post: p14, user: u7)
Comment.create(content: "Lol wtf!!", post: p13, user: u3)
Comment.create(content: "Excited to watch!!", post: p16, user: u13)
Comment.create(content: "How?", post: p1, user: u1)
Comment.create(content: "I was hype as well on that game", post: p3, user: u2)
Comment.create(content: "Then make it happen!", post: p8, user: u12)


Like.create(user: u12, post: p1)
Like.create(user: u1, post: p2)
Like.create(user: u2, post: p3)
Like.create(user: u3, post: p1)
Like.create(user: u4, post: p5)
Like.create(user: u5, post: p4)
Like.create(user: u6, post: p7)
Like.create(user: u7, post: p6)
Like.create(user: u8, post: p8)
Like.create(user: u9, post: p9)
Like.create(user: u10, post: p11)
Like.create(user: u11, post: p10)
Like.create(user: u12, post: p12)
Like.create(user: u13, post: p13)
Like.create(user: u14, post: p1)
Like.create(user: u1, post: p2)
Like.create(user: u2, post: p14)
Like.create(user: u3, post: p15)
Like.create(user: u4, post: p16)
Like.create(user: u5, post: p1)
Like.create(user: u6, post: p2)
Like.create(user: u7, post: p3)
Like.create(user: u8, post: p4)
Like.create(user: u9, post: p5)
Like.create(user: u10, post: p6)
Like.create(user: u11, post: p7)
Like.create(user: u12, post: p10)
Like.create(user: u13, post: p11)
Like.create(user: u14, post: p13)
Like.create(user: u15, post: p12)
Like.create(user: u1, post: p14)
Like.create(user: u2, post: p15)
Like.create(user: u3, post: p16)



