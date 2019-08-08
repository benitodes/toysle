# desroy first: Class with references:
Toy.destroy_all
User.destroy_all
Theme.destroy_all

# create user data array

user_list = [
  ['Benoit', 'Destresse', 'benoit@destresse.fr', 'password'],
  ['Samba', 'OhGee', 'samba@dance.com', 'password'],
  ['Jana', 'Buble', 'jana@buble.com', 'password']
]

# create new users from array
# devise will automatically transform value of variable 'password' into encrypted password

user_list.each do |first_name, last_name, email, password|
  User.create!(first_name: first_name, last_name: last_name, email: email, password: password)
end

puts "users have been created"

# devise will automatically transform password into encrypted password

theme_list = ['outdoor games', 'fun for all', 'ballgame']

# if bang after create rails will throw error, raises exception


theme_list.each do |name|
  Theme.create!(name: name)
end

puts "themes have been created"





# create toy data array


toy_list = [

  ['Hasbro Twister Dance Games', 'Those famous Twister dots have become dance teachers. In Twister Dance Contest,
    follow the lights from the console and dance on the dots. The console is pre-programmed with 5 songs that can be played at 3 skill levels. You can also plug in your own MP3 player and dance to any song in your library.
  For two to four players, ages 8 and up. Hasbro also has more dance games in the Twister series.', '5 Cours du Tage, Serris', 4, 8, 1, 1, 'https://images.unsplash.com/photo-1535572290543-960a8046f5af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'],

  ['Diggin Mega Rocket', "Forget Frisbees and rubber balls and try tossing this super-sized inflatable rocket instead. The Mega Rocket can fly over 100 feet, but it's easy enough for kids 6 and up to throw and catch.",
    '16 Villa Gaudelet, Paris', 9, 10, 2, 2, 'https://images.unsplash.com/photo-1508896694512-1eade558679c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'],

  ['Zipline Set', "Did you know you can enjoy a ziplining adventure right in your own backyard? This kit supplies everything you need.
Anyone who's over 7 years old and under 250 pounds can use it.", 'Place Daviel, Marseille', 12, 11, 1, 3, 'https://images.unsplash.com/photo-1560743787-f7cd7bb9c5f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'],

  ['Rollors', "This unique lawn game combines characteristics of horseshoes, bocce ball and bowling. Players roll their disks to the goal, aiming to get closest. It takes skill, but there's an element of chance too.
The set weighs just 3 pounds and comes with a travel bag, and you can also buy an expansion pack.", "2 rue des Cordeliers, Aix-en-Provence", 7, 5, 1, 3,
"https://images.unsplash.com/photo-1560642042-1d0d2bf5a742?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"],

  ['Letter cubes', "This unique lawn game combines characteristics of horseshoes, bocce ball and bowling. Players roll their disks to the goal, aiming to get closest. It takes skill, but there's an element of chance too.
The set weighs just 3 pounds and comes with a travel bag, and you can also buy an expansion pack.", "2 rue des Cordeliers, Aix-en-Provence", 7, 5, 1, 3,
"https://images.unsplash.com/photo-1515488042361-ee00e0ddd4e4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1508&q=80"],

  ['Buggies', "This unique lawn game combines characteristics of horseshoes, bocce ball and bowling. Players roll their disks to the goal, aiming to get closest. It takes skill, but there's an element of chance too.
The set weighs just 3 pounds and comes with a travel bag, and you can also buy an expansion pack.", "2 rue des Cordeliers, Aix-en-Provence", 7, 5, 1, 3,
"https://images.unsplash.com/photo-1532330393533-443990a51d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"],

['Cowboy Woodie', "This unique lawn game combines characteristics of horseshoes, bocce ball and bowling. Players roll their disks to the goal, aiming to get closest. It takes skill, but there's an element of chance too.
The set weighs just 3 pounds and comes with a travel bag, and you can also buy an expansion pack.", "2 rue des Cordeliers, Aix-en-Provence", 7, 5, 1, 3,
"https://images.unsplash.com/photo-1531214159280-079b95d26139?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80"]

]
#create new toys from array

toy_list.each do |name, description, address, daily_price, min_age, theme_id, user_id, picture|
  toy = Toy.new( name: name, description: description, address: address, daily_price: daily_price,
    min_age: min_age, theme_id: theme_id, user_id: user_id)
    toy.remote_picture_url = picture
    toy.save
end

puts "toys have been created"

# create bookings

booking_list = [
  [Date.today - 20, Date.today - 15, 50, 2, 1],
  [Date.today - 30, Date.today - 25, 80, 3, 1],
  [Date.today - 10, Date.today - 3, 35, 3, 1],
  [Date.today - 9, Date.today - 2, 64, 2, 1],
  [Date.today - 13, Date.today - 11, 20, 2, 1]
]

booking_list.each do |start_date, end_date, total_price, toy_id, user_id|
  Booking.create!(start_date: start_date, end_date: end_date, total_price: total_price, toy_id: toy_id, user_id: user_id)
end

puts "bookings have been created"
