def game_hash

  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => %w(Black White),
      :players => [
        :player_name => ["Alan Anderson","Reggie Evans","Brook Lopez","Mason Plumlee","Jason Terry"],
        :numbers => %w(0 30 11 1 31),
        :shoe => %w(16 14	17 19	15),
        :points => %w(22 12	17 26	19),
        :rebounds => %w(12 12	19 11 2),
        :assists => %w(12	12 10	6	2),
        :steals => %w(3	12 3 3 4),
        :blocks => %w(1	12 1 8 11),
        :slams => %w(1 7 15	5	1)
    ]
  },
    :away => {
      :team_name => "Charlotte Hornets",
        :colors => %w(Turquoise Purple),
        :players => [
          :player_name => ["Jeff Adrien",	"Bismack Biyombo",	"DeSagna Diop",	"Ben Gordon",	"Kemba Walker"],
          :numbers => %w(4 0 2 8 33),
          :shoe => %w(18 16 14 15 15),
          :points => %w(10 12 24 33 6),
          :rebounds => %w(1 4 12 3 12),
          :assists => %w(1 7 12 2 12),
          :steals => %w(2 22 4 1 7),
          :blocks => %w(7 15 5 1 5),
          :slams => %w(2 10 5 0 12)
        ]
      }
    }

  hash
end

def num_points_scored(player)

points = 0;
  game_hash.each { |team,level|
      level[:players].each { |stat|
        index = (stat[:player_name]).find_index(player)
        if((stat[:player_name]).find_index(player))
        points = stat[:points][index].to_i
        end
    }
  }

  points
end

def shoe_size(player)

shoe_size = 0;
  game_hash.each { |team,level|
      level[:players].each { |stat|
        index = (stat[:player_name]).find_index(player)
        if((stat[:player_name]).find_index(player))
          shoe_size = stat[:shoe][index].to_i
        end
    }
  }

  shoe_size
end

def team_colors(team_name)

colors = 0;
  game_hash.each { |team,level|
    if(level[:team_name] == team_name)
      colors = level[:colors]
    end
  }
  colors
end
def game_hash

  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => %w(Black White),
      :players => [
        :player_name => ["Alan Anderson","Reggie Evans","Brook Lopez","Mason Plumlee","Jason Terry"],
        :numbers => %w(0 30 11 1 31),
        :shoe => %w(16 14	17 19	15),
        :points => %w(22 12	17 26	19),
        :rebounds => %w(12 12	19 11 2),
        :assists => %w(12	12 10	6	2),
        :steals => %w(3	12 3 3 4),
        :blocks => %w(1	12 1 8 11),
        :slams => %w(1 7 15	5	1)
    ]
  },
    :away => {
      :team_name => "Charlotte Hornets",
        :colors => %w(Turquoise Purple),
        :players => [
          :player_name => ["Jeff Adrien",	"Bismack Biyombo",	"DeSagna Diop",	"Ben Gordon",	"Kemba Walker"],
          :numbers => %w(4 0 2 8 33),
          :shoe => %w(18 16 14 15 15),
          :points => %w(10 12 24 33 6),
          :rebounds => %w(1 4 12 3 12),
          :assists => %w(1 7 12 2 12),
          :steals => %w(2 22 4 1 7),
          :blocks => %w(7 15 5 1 5),
          :slams => %w(2 10 5 0 12)
        ]
      }
    }

  hash
end

def num_points_scored(player)

points = 0;
  game_hash.each { |team,level|
      level[:players].each { |stat|
        index = (stat[:player_name]).find_index(player)
        if((stat[:player_name]).find_index(player))
        points = stat[:points][index].to_i
        end
    }
  }

  points
end

def shoe_size(player)

shoe_size = 0;
  game_hash.each { |team,level|
      level[:players].each { |stat|
        index = (stat[:player_name]).find_index(player)
        if((stat[:player_name]).find_index(player))
          shoe_size = stat[:shoe][index].to_i
        end
    }
  }

  shoe_size
end

def team_colors(team_name)

colors = 0;
  game_hash.each { |team,level|
    if(level[:team_name] == team_name)
      colors = level[:colors]
    end
  }

  colors
end

def team_names

teams = Array.new()

  game_hash.each_with_index { |(team,level),index|
      teams[index] = level[:team_name]
  }

  teams
end

def player_numbers(team_name)

numbers = ""

  game_hash.each { |team,level|
    level[:players].each { |stat|
    if(level[:team_name]==team_name)
      numbers = stat[:numbers]
    end
    }
  }

  numbers.map(&:to_i)

end

def player_stats(player_name)

stats = {}
  game_hash.each { |team,level|
    level[:players].each { |stat|
      stat.each { |e,value|
        index = (stat[:player_name]).find_index(player_name)
        if((stat[:player_name]).find_index(player_name))
          if(stat.key?(:numbers))
          stats[:number] = stat[e][index].to_i
        elsif (stat.key?(:slams))
            stats[:slam_dunk] = stat[e][index].to_i
          else
            stats[e] = stat[e][index].to_i
          end
        end
      }
    }
  }

  stats

end
