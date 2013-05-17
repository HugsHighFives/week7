class Game < ActiveRecord::Base

  belongs_to :home_team, class_name: 'Team'

  # def home_team
  #   Team.find_by_id(home_team_id)
  # end

  belongs_to :visitor_team, class_name: 'Team'

  # belongs_to :team    # team_id (integer)
  #                     # Team

  # def team
    # return Team.find_by_id(team_id)
  # end

end
