# Write your code below game_hash
def game_hash
  {
    :home =>{
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {
          :player_name =>"Alan Anderson",
          :number =>0,
          :shoe =>16,
          :points => 22,
          :rebounds =>12,
          :assists =>12,
          :steals =>3,
          :blocks =>1,
          :slam_dunks =>1
        },
        {
          :player_name => "Reggie Evans",
          :number => 30,
          :shoe =>14,
          :points =>12,
          :rebounds => 12,
          :assists =>12,
          :steals =>12,
          :blocks => 12,
          :slam_dunks => 7
        },
        {
          :player_name =>"Brook Lopez",
          :number =>11,
          :shoe =>17,
          :points =>17,
          :rebounds =>19,
          :assists =>10,
          :steals =>3,
          :blocks =>1,
          :slam_dunks =>15
        },
        {
          :player_name =>"Mason Plumlee",
          :number =>1,
          :shoe =>19,
          :points =>26,
          :rebounds =>11,
          :assists =>6,
          :steals =>3,
          :blocks =>8,
          :slam_dunks =>5
        },
        {
          :player_name =>"Jason Terry",
          :number =>31,
          :shoe =>15,
          :points =>19,
          :rebounds =>2,
          :assists =>2,
          :steals =>4,
          :blocks =>11,
          :slam_dunks =>1
        }
      ]
    },
    :away =>{
      :team_name =>"Charlotte Hornets",
      :colors =>["Turquoise", "Purple"],
      :players =>[
        {
          :player_name =>"Jeff Adrien",
          :number =>4,
          :shoe =>18,
          :points =>10,
          :rebounds =>1,
          :assists =>1,
          :steals => 2,
          :blocks =>7,
          :slam_dunks => 2
        },
        {
          :player_name =>"Bismack Biyombo",
          :number =>0,
          :shoe =>16,
          :points =>12,
          :rebounds =>4,
          :assists =>7,
          :steals =>22,
          :blocks =>15,
          :slam_dunks =>10
        },
        {
          :player_name =>"DeSagna Diop",
          :number =>2,
          :shoe =>14,
          :points =>24,
          :rebounds =>12,
          :assists =>12,
          :steals =>4,
          :blocks=>5,
          :slam_dunks =>5
        },
        {
          :player_name =>"Ben Gordon",
          :number => 8,
          :shoe =>15,
          :points =>33,
          :rebounds =>3,
          :assists =>2,
          :steals =>1,
          :blocks =>1,
          :slam_dunks =>0
        },
        {
          :player_name =>"Kemba Walker",
          :number =>33,
          :shoe =>15,
          :points =>6,
          :rebounds =>12,
          :assists =>12,
          :steals =>7,
          :blocks =>5,
          :slam_dunks =>12
        }
      ]
    }
  }
end

# print(game_hash[:away][:players][0][:points])

def num_points_scored(player)
  game_hash.each do |key, value|
    value[:players].each do |hash|
      
      if (hash[:player_name]==player)
        return hash[:points]
      end
    end
  end
end

# def print_all_results(placeholder, other_placeholder)
#   print("Points scored: " + num_points_scored(placeholder).to_s + "\n")
#   print("Shoe Size: " + shoe_size(other_placeholder).to_s)
# end

def shoe_size(player)
  game_hash.each do |key, value|
    value[:players].each do |hash|
      
      if (hash[:player_name]==player)
        return hash[:shoe]
      end
    end
  end
end

# print_all_results("Ben Gordon", "Ben Gordon")

def team_colors(team)
  game_hash.each do |key, value|
    
    if(value[:team_name]==team)
      return value[:colors]
    end
  end
end

def team_names
  array = []
  game_hash.each do |key, value|
    array << value[:team_name]
  end
  arr
end

def player_numbers(team)
  arr = []
  game_hash.each do |key, value|
    if(value[:team_name]==team)
      value[:players].each do |hash|
        arr << hash[:number]
      end
    end
  end
  arr
end

def player_stats(player)
  game_hash.each do |key, value|
    value[:players].each do |hash|
      
      if (hash[:player_name]==player)
        return hash
      end
    end
  end
end

def big_shoe_rebounds
  player_with_largest_shoe = ""
  largest_shoe = 0
  game_hash.each do |key, value|
    value[:players].each do |hash|
      
      if(hash[:shoe] > largest_shoe)
         largest_shoe = hash[:shoe]
         player_with_largest_shoe = hash[:player_name]
      end
    end
  end
   game_hash.each do |key, value|
    value[:players].each do |hash|
      
      if(hash[:player_name] == player_with_largest_shoe)
         return hash[:rebounds]
      end
    end
  end
end
