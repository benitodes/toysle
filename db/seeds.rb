# create toy data array

toy_list = [
  ['Hasbro Twister Dance Games', 'Those famous Twister dots have become dance teachers. In Twister Dance Contest,
    follow the lights from the console and dance on the dots. The console is pre-programmed with 5 songs that can be played at 3 skill levels. You can also plug in your own MP3 player and dance to any song in your library.
  For two to four players, ages 8 and up. Hasbro also has more dance games in the Twister series.', 'Canggu', 4, 8, 1, 1, 'https://cdn.shoplightspeed.com/shops/624163/files/12201176/800x1024x2/winning-moves-classic-twister.jpg'],

  ['Diggin Mega Rocket', "Forget Frisbees and rubber balls and try tossing this super-sized inflatable rocket instead. The Mega Rocket can fly over 100 feet, but it's easy enough for kids 6 and up to throw and catch.",
    'Canggu', 9, 10, 2, 2, 'https://www.verywellfamily.com/thmb/KmESiEvNWE49p4uI54vGiBBuHds=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/mega-rocket-583e05053df78c6f6a75a361.jpg'],

  ['Zipline Set', "Did you know you can enjoy a ziplining adventure right in your own backyard? This kit supplies everything you need.
Anyone who's over 7 years old and under 250 pounds can use it.", 'Canggu', 12, 11, 1, 3, 'https://www.verywellfamily.com/thmb/FKDpWmy_qeJIH5iEZXx8M7dJkxA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/zipline-kit-56a2c9fd5f9b58b7d0ce8bd8.jpg'],

  ['Rollors', "This unique lawn game combines characteristics of horseshoes, bocce ball and bowling. Players roll their disks to the goal, aiming to get closest. It takes skill, but there's an element of chance too.
The set weighs just 3 pounds and comes with a travel bag, and you can also buy an expansion pack.", 7, 5, 1, 3,
"https://www.verywellfamily.com/thmb/yG1hW457TXbfY__gwRsiGQfNX6I=/992x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/rollors-56a2c9fd5f9b58b7d0ce8be0.jpg"]

]


#create new toys from array

toy_list.each do |name, description, address, daily_price, min_age, theme_id, user_id, picture|
  Toy.create( name: name, description: description, address: address, daily_price: daily_price,
    min_age: min_age, theme_id: theme_id, user_id: user_id, picture: picture)
end



# create user data array

user_list = [
  ['Benoit', 'Destresse', 'benoit@destresse.fr', 'password'],
  ['Samba', 'OhGee', 'samba@dance.com', 'password'],
  ['Jana', 'Buble', 'jana@buble.com', 'password']
]

# create new users from array
# devise will automatically transform password into encrypted password

user_list.each do |first_name, last_name, email, password|
  User.create(first_name: first_name, last_name: last_name, email: email, password: password)
end


# devise will automatically transform password into encrypted password

theme_list = [
  'outdoor games', 'fun for all', 'ballgame'
]


theme_list.each do |name|
  Theme.create(name: name)
end

