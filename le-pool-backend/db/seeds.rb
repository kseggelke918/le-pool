# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Katie', email: 'katie@test.com')

game = Game.create(date: Time.now, game_name: 'seeded_game')

player1 = Player.create(name: 'player1')
player2 = Player.create(name: 'player2')
