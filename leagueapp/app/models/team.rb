class Team < ActiveRecord::Base

  has_many :home_games, class_name: 'Game', foreign_key: 'home_team_id'
  has_many :away_games, class_name: 'Game', foreign_key: 'visitor_team_id'

  def games
    Game.where("home_team_id = #{self.id} OR visitor_team_id = #{self.id}")
  end

end
