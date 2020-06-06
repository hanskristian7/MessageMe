# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Hans", password: "12345")
User.create(username: "Cindy", password: "12345")
User.create(username: "William", password: "12345")
User.create(username: "Rama", password: "12345")
User.create(username: "Viandi", password: "12345")

Message.create(body: "Hello there", user: User.find_by(username: "Hans"))
Message.create(body: "Hello Hello guys", user: User.find_by(username: "Cindy"))
Message.create(body: "Whats up", user: User.find_by(username: "William"))
Message.create(body: "Yoo", user: User.find_by(username: "Rama"))
Message.create(body: "hello bray", user: User.find_by(username: "Viandi"))

