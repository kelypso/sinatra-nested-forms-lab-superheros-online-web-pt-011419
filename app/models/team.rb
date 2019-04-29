class Team
  attr_accessor :name, :motto
  @@teams = []

  def initialize(team_data)
    @name = team_data[:name]
    @motto = team_data[:motto]
    @@teams << self
  end

  def self.all
    @@teams
  end
end