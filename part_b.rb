class Team

  # attr_reader(:name, :players, :coach)
  # attr_writer(:name, :players, :coach)
  attr_accessor(:name, :players, :coach)

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end


  # def name()
  #   return @name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end


  def set_coach(new_coach)
    @coach = new_coach
  end

  def add_player(new_player)
    @players.push(new_player)
  end

def player_in_team(player)
    players.include?(player)
  end

def winners(win)
  @points += 1 if win == true
end

end
