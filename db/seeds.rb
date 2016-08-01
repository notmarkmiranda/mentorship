# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Posse.create(name: "No Posse", bio: "Default posse choice")

20.times do |n|
  mentor = Mentor.new(
    location: "Denver",
    bio: "Former Student, current mentor!"
  )
  mentor.mentor_timezone = MentorTimezone.new(name: "MT")
  mentor.mentor_timezone = timezone
  user = User.new(
    uid: n,
    token: "#{n}",
    name: "mentor #{n}",
    email: "mentor#{n}@turing.io",
    slack_name: "mentor#{n}",
    picture: "https://avatars2.githubusercontent.com/u/14855129?v=3&s=460"
  )
  mentor.user = user
  result = mentor.save
  puts "Saving mentor #{n + 1} - result: #{result}"
  puts mentor.errors.full_messages.join(', ') unless result
end
