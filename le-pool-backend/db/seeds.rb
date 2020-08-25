# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: 'Katie', email: 'katie@test.com')
user2 = User.create(name: 'Leah', email: 'leah@test.com')

game1 = Game.create(date: Time.now, game_name: 'seeded_game_1', user_id: 1)
game2 = Game.create(date: Time.now, game_name: 'seeded_game_2', user_id: 2)

# player1 = Player.create(name: 'player1', game_id: 1)
# player2 = Player.create(name: 'player2', game_id: 1)

# player3 = Player.create(name: 'player3', game_id: 2)
# player4 = Player.create(name: 'player4', game_id: 2)


