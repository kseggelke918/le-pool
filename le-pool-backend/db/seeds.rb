# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = DeviseUser.create(name: 'Katie', email: 'katie@test.com', password: '1234')
user2 = DeviseUser.create(name: 'Leah', email: 'leah@test.com', password: '1234')

game1 = Game.create(game_name: 'seeded_game_1', devise_user_id: 1)
game2 = Game.create(game_name: 'seeded_game_2', devise_user_id: 2)

player1 = Player.create(name: 'player1')
player2 = Player.create(name: 'player2')

roster1 = RosterEntry.create(game_date: Time.now, player_id: 1, game_id: 1)
roster2 = RosterEntry.create(game_date: Time.now, player_id: 1, game_id: 2)
roster3 = RosterEntry.create(game_date: Time.now, player_id: 2, game_id: 2)
