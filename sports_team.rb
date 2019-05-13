class SportsTeam

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  # def get_name
  #   return @name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end
  def add_player(player)
    @players.push(player)
  end

  def player_check(player)
    for player_found in @players
      if player == player_found
        ans = true
      else
        ans = false
      end
    end
    return ans
  end

  def add_result(result)
    if result == "win"
      @points += 3
    elsif result == "draw"
      @points += 1
    end
  end

end
