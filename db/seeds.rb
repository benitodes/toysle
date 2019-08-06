toy_list = [
  ['Hasbro Twister Dance Games',  ],
  [ "France", 'Those famous Twister dots have become dance teachers. In Twister Dance Contest,
    follow the lights from the console and dance on the dots. The console is pre-programmed with 5 songs that can be played at 3 skill levels. You can also plug in your own MP3 player and dance to any song in your library.
  For two to four players, ages 8 and up. Hasbro also has more dance games in the Twister series.', 'Canggu', 4, 8],

]

country_list.each do |name, population|
  Country.create( name: name, population: population )
end
# TODO: Write a seed to insert 100 posts in the database
