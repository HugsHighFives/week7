# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  Team.destroy_all
  Game.destroy_all
end

["Cubs", "Reds", "Yankees", "Dodgers", "White Sox"].each do |team_name|
  t = Team.new
  t.name = team_name
  t.wins = 0
  t.losses = 0
  t.save
end

puts "There are now #{Team.count} teams."

teams = Team.all
40.times do
  opponents = teams.sample(2)
  g = Game.new
  g.home_team_id = opponents.first.id
  g.visitor_team_id = opponents.last.id
  g.save
end

puts "There are now #{Game.count} games."
