# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Opinion.destroy_all
User.destroy_all
Thing.destroy_all

johnnylaw, juan, boo = [
  ['johnnylaw', 'johnonrails@gmail.com'],
  ['juanvaldez', 'juanvaldez@example.com'],
  ['booboo', 'booboo@example.com']
].map do |user_info|
  User.create(username: user_info.first, email: user_info.last)
end

dyson, cabbage, miley, ira, apt = [
  ['Dyson Vacuum Cleaner', 'dyson.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'],
  ['Cabbage Patch Kid', 'cabbage.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'],
  ['Miley Cyrus', 'miley.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'],
  ['Ira', 'ira.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'],
  ['New York Apartment', 'nyc-apartment.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.']
].map do |thing_info|
  Thing.create(name: thing_info.first, image_url: thing_info[1], description: thing_info[2])
end

Opinion.create([
  { user: juan, thing: dyson, comment: 'Great. I never thought I would love cleaning. Blah blah blah', rating: 4 },
  { user: boo, thing: dyson, comment: 'I was shocked to see that this thing didn\'t actually do my cleaning. Lame!', rating: 2 },
  { user: boo, thing: cabbage, comment: 'These things are totally cute. So happy. I wanna lie around for hours and kiss them...', rating: 4 },
  { user: juan, thing: cabbage, comment: 'Why?...just - why?', rating: 1 },
  { user: boo, thing: ira, comment: 'Eye - ruh! Eye - ruh! Eye - ruh!', rating: 5 },
  { user: juan, thing: ira, comment: 'Eye - ruh! Eye - ruh! Eye - ruh!', rating: 5 },
])