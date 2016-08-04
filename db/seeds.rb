# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Posse.create(name: "No Posse", bio: "Default posse choice")

Cohort.create(id: 1602)
Cohort.create(id: 1603)
Cohort.create(id: 1605)
Cohort.create(id: 1606)
Cohort.create(id: 1608)
Cohort.create(id: 1610)

# jon b
jonb = Mentor.new(
  location: "New York",
  bio: "JON!"
)
jonb.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
jonb_user = User.new(
  uid: 1,
  token: "a",
  name: "Jon B.",
  email: "job@jonb.com",
  slack_name: "@jbernesser16",
  picture: "https://avatars0.githubusercontent.com/u/13852077?v=3&s=400"
)
jonb.user = jonb_user
jonb.save
puts "Saving #{jonb_user.name}"


#alex
alex = Mentor.new(
  location: "Los Angeles",
  bio: "Alex"
)
alex.mentor_timezone = MentorTimezone.find_or_create_by(name: "PT")
alex_user = User.new(
  uid: 3,
  token: "c",
  name: "Alex N.",
  email: "alex@alex.com",
  slack_name: "@alexnavarrete",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/turing_1.jpg?itok=GYztw0sb"
)
alex.user = alex_user
alex.save
puts "Saving #{alex_user.name}"


#ali
ali = Mentor.new(
  location: "Denver",
  bio: "Ali"
)
ali.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
ali_user = User.new(
  uid: 4,
  token: "d",
  name: "Ali A.",
  email: "ali@ali.com",
  slack_name: "@alireza.andersen",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/Ali%20Andersen.png?itok=GV3FYm7R"
)
ali.user = ali_user
ali.save
puts "Saving #{ali_user.name}"


#ashwin
ashwin = Mentor.new(
  location: "Austin",
  bio: "Ashwin! 1602 Legal Counsel"
)
ashwin.mentor_timezone = MentorTimezone.find_or_create_by(name: "CT")
ashwin_user = User.new(
  uid: 2,
  token: "b",
  name: "Ashwin R.",
  email: "ashwin@ashwin.com",
  slack_name: "@theonlyrao",
  picture: "https://avatars1.githubusercontent.com/u/13606384?v=3&s=400"
)
ashwin.user = ashwin_user
ashwin.save
puts "Saving #{ashwin_user.name}"

#chad ellison
chad = Mentor.new(
  location: "Denver",
  bio: "Chad"
)
chad.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
chad_user = User.new(
  uid: 6,
  token: "f",
  name: "Chad E.",
  email: "chad@chad.com",
  slack_name: "@chad_ellison",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/Business%20Photo%201.JPG?itok=oyPVQjRC"
)
chad.user = chad_user
chad.save
puts "Saving #{chad_user.name}"

#claudia kiesenhofer
claudia = Mentor.new(
  location: "Denver",
  bio: "Claudia"
)
claudia.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
claudia_user = User.new(
  uid: 7,
  token: "g",
  name: "Claudia K.",
  email: "claudia@claudia",
  slack_name: "@claudia",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/Turing_profile_pic_med.jpg?itok=2WAD1emo"
)
claudia.user = claudia_user
claudia.save
puts "Saving #{claudia.name}"


#andrew
andrew = Mentor.new(
  location: "Denver",
  bio: "Andrew"
)
andrew.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
andrew_user = User.new(
  uid: 5,
  token: "e",
  name: "Drew T.",
  email: "andrew@andrew.com",
  slack_name: "@drewt",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/IMG_1986.jpg?itok=ts5q92vX"
)
andrew.user = andrew_user
andrew.save
puts "Saving #{andrew.name}"

#gurudsundesh
sunny = Mentor.new(
  location: "Anywhere",
  bio: "Sunny"
)
sunny.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
sunny_user = User.new(
  uid: 8,
  token: "f",
  name: "Gurusundesh K.",
  email: "sunny@sunny.com",
  slack_name: "@gurusundesh",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/headshot_1.jpg?itok=t-XGmrGn"
)
sunny.user = sunny_user
sunny.save
puts "Saving #{sunny.name}"

#jared
jared = Mentor.new(
  location: "San Diego",
  bio: "Jared"
)
jared.mentor_timezone = MentorTimezone.find_or_create_by(name: "PT")
jared_user = User.new(
  uid: 9,
  token: "g",
  name: "Jared R.",
  email: "jared@jared.com",
  slack_name: "@jared_roth",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/DSC06742_0.jpg?itok=PvUe24Ns"
)
jared.user = jared_user
jared.save
puts "Saving #{jared.name}"

#jeneve
jeneve = Mentor.new(
  location: "San Diego",
  bio: "Jared"
)
jeneve.mentor_timezone = MentorTimezone.find_or_create_by(name: "PT")
jeneve_user = User.new(
  uid: 10,
  token: "h",
  name: "Jeneve R.",
  email: "jeneve@jeneve.com",
  slack_name: "@jeneve.parrish",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/profile%20pic.jpg?itok=JpktDWM7"
)
jeneve.user = jeneve_user
jeneve.save
puts "Saving #{jeneve.name}"

#liss
jon_l = Mentor.new(
  location: "Ashville",
  bio: "Jon L.."
)
jon_l.mentor_timezone = MentorTimezone.find_or_create_by(name: "ET")
jon_l_user = User.new(
  uid: 11,
  token: "i",
  name: "Jon L.",
  email: "jon_l@jon_l.com",
  slack_name: "@jdliss",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/DSC06837_1.jpg?itok=UHm1MXn5"
)
jon_l.user = jon_l_user
jon_l.save
puts "Saving #{jon_l_user.name}"

#Josh
josh = Mentor.new(
  location: "Denver",
  bio: "Josh W."
)
josh.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
josh_user = User.new(
  uid: 12,
  token: "j",
  name: "Josh W.",
  email: "josh@josh.com",
  slack_name: "@josh_washke",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/joshpicture.jpg?itok=nC5gm0bS"
)
josh.user = josh_user
josh.save
puts "Saving #{josh_user.name}"

#Kris
kris = Mentor.new(
  location: "Denver",
  bio: "Foss."
)
kris.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
kris_user = User.new(
  uid: 13,
  token: "k",
  name: "Kris F.",
  email: "kris@kris.com",
  slack_name: "@k_foss",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/DSC06849%20copy.jpg?itok=Sh-9KT2f"
)
kris.user = kris_user
kris.save
puts "Saving #{kris_user.name}"

#Ling
ling = Mentor.new(
  location: "Philly",
  bio: "Charmander."
)
ling.mentor_timezone = MentorTimezone.find_or_create_by(name: "ET")
ling_user = User.new(
  uid: 14,
  token: "l",
  name: "Ling T.",
  email: "ling@ling.com",
  slack_name: "@lingtran",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/ling_tran_current_headshot.jpg?itok=QoWP5oAt"
)
ling.user = ling_user
ling.save
puts "Saving #{ling_user.name}"

#Marina
marina = Mentor.new(
  location: "Denver",
  bio: "Charmander."
)
marina.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
marina_user = User.new(
  uid: 15,
  token: "m",
  name: "Marina C.",
  email: "marina@marina.com",
  slack_name: "@marinacor",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/Marina%20Corona-small.png?itok=RW9t-dpc"
)
marina.user = marina_user
marina.save
puts "Saving #{marina_user.name}"

#Matt P
matt = Mentor.new(
  location: "East Coast!",
  bio: "Pindell."
)
matt.mentor_timezone = MentorTimezone.find_or_create_by(name: "ET")
matt_user = User.new(
  uid: 16,
  token: "n",
  name: "Matt P.",
  email: "matt@matt.com",
  slack_name: "@mpindell",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/mpindell_1.jpeg?itok=qX03W1mb"
)
matt.user = matt_user
matt.save
puts "Saving #{matt_user.name}"

#Pat
pat = Mentor.new(
  location: "Denver",
  bio: "Hardy."
)
pat.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
pat_user = User.new(
  uid: 17,
  token: "o",
  name: "Patrick W.",
  email: "pat@pat.com",
  slack_name: "@patrickwhardy",
  picture: "https://www.turing.io/sites/default/files/styles/graduate_full_profile/public/headshot_med.jpeg?itok=kGLP6L39"
)
pat.user = pat_user
pat.save
puts "Saving #{pat_user.name}"

# sal
sal = Mentor.new(
  location: "Denver",
  bio: "I'm Sal. 1602's fearless leader. Student turned TA"
)
sal.mentor_timezone = MentorTimezone.find_or_create_by(name: "MT")
sal_user = User.new(
  uid: 12346,
  token: "c",
  name: "Sal E.",
  email: "sal@turing.io",
  slack_name: "@s-espinosa",
  picture: "https://avatars1.githubusercontent.com/u/10855116?v=3&s=400"
)
sal.user = sal_user
sal.save
puts "Saving #{sal_user.name}"
