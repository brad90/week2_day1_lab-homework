class SportsTeam

  attr_reader :name, :players, :coach, :points
  attr_writer :name, :players, :coach, :points

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def find_player(name)
      players.include?(name)
  end

  def  win_or_lose(outcome)
    if (outcome == "win")
      @points += 100
    end
  end
end
