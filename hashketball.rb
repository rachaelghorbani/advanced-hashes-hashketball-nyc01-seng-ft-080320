require "./hashketball.rb"
require "pry"

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


######### SOLUTIONS WITHOUT THE USE OF HELPER METHODS #########


# def num_points_scored(player)
#   game_hash
  
#   game_hash.each do |team_location, first_nested_hash|
#     first_nested_hash.each do |keys, arrays_and_strings|
#       if arrays_and_strings.class == Array
#         arrays_and_strings.each do |player_stats|
#           if player_stats.class == Hash && player_stats[:player_name] == player
#             return player_stats[:points]
#           end
#         end
#       end
#     end
#   end
# end


# def shoe_size(player)
  
#   game_hash
  
#   game_hash.each do |team_location, first_nested_hash|
#     first_nested_hash.each do |keys, arrays_and_strings|
#       if arrays_and_strings.class == Array
#         arrays_and_strings.each do |player_stats|
#           if player_stats.class == Hash && player_stats[:player_name] == player
#             return player_stats[:shoe]
#           end
#         end
#       end
#     end
#   end
# end


# def team_colors(team_name)
#   game_hash.each do |location, nested_hash|
#     if nested_hash[:team_name] == team_name
#       return nested_hash[:colors]
#     end
#   end
# end

# def team_names
#   array_of_team_names = []
  
#   game_hash.each do |location, inner_hash|
#     array_of_team_names.push(inner_hash[:team_name])
#   end
#   array_of_team_names
# end

# def player_numbers(team)
#   game_hash
#   array_of_players_numbers = []

#   game_hash.each do |location, nested_hash|
#     if nested_hash[:team_name] == team
#       nested_hash.each do |team_data, nested_structures|
#         if nested_structures.class == Array
#             nested_structures.each do |nested_hash|
#               if nested_hash.class == Hash
#                 array_of_players_numbers.push(nested_hash[:number])
#               end
#             end
#           end
#         end
#       end
#     end
#   array_of_players_numbers
# end

# def player_stats(player)
#   game_hash
  
#   game_hash.each do |team_location, first_nested_hash|
#     first_nested_hash.each do |keys, arrays_and_strings|
#       if arrays_and_strings.class == Array
#         arrays_and_strings.each do |player_stats|
#           if player_stats.class == Hash && player_stats[:player_name] == player
#             return player_stats
#           end
#         end
#       end
#     end
#   end
# end

# def big_shoe_rebounds
#   game_hash
#   array_of_shoe_sizes = []

#     game_hash.each do |location, nested_hash|
#       nested_hash.each do |team_data, nested_structures|
#         if nested_structures.class == Array
#             nested_structures.each do |nested_hash|
#               if nested_hash.class == Hash
#                 array_of_shoe_sizes.push(nested_hash[:shoe])
#               end
#             end
#           end
#         end
#       end
    
#   array_of_shoe_sizes

#   largest_shoe = array_of_shoe_sizes[0]
#   counter = 0
#   while counter < array_of_shoe_sizes.length do
#     if array_of_shoe_sizes[counter] > largest_shoe
#       largest_shoe = array_of_shoe_sizes[counter]
#     end 
#     counter += 1
#   end
#   largest_shoe

#   game_hash.each do |location, nested_hash|
#       nested_hash.each do |team_data, nested_structures|
#         if nested_structures.class == Array
#             nested_structures.each do |nested_hash|
#               if nested_hash.class == Hash && nested_hash[:shoe] == largest_shoe
#                 return nested_hash[:rebounds]
#               end
#             end
#           end
#         end
#       end
# end

# def most_points_scored
#   game_hash
#   array_of_points_scored = []

#     game_hash.each do |location, nested_hash|
#       nested_hash.each do |team_data, nested_structures|
#         if nested_structures.class == Array
#             nested_structures.each do |nested_hash|
#               if nested_hash.class == Hash
#                 array_of_points_scored.push(nested_hash[:points])
#               end
#             end
#           end
#         end
#       end
    
#   array_of_points_scored

#   most_points = array_of_points_scored[0]
#   counter = 0
#   while counter < array_of_points_scored.length do
#     if array_of_points_scored[counter] > most_points
#       most_points = array_of_points_scored[counter]
#     end 
#     counter += 1
#   end
#   most_points

#   game_hash.each do |location, nested_hash|
#       nested_hash.each do |team_data, nested_structures|
#         if nested_structures.class == Array
#             nested_structures.each do |nested_hash|
#               if nested_hash.class == Hash && nested_hash[:points] == most_points
#                     puts nested_hash[:player_name]
#               end
#             end
#           end
#         end
#       end
# end

# def player_with_longest_name

#   game_hash
#   array_of_names = []

#   game_hash.each do |location, nested_hash|
#     nested_hash.each do |general_info, nested_data|
#       if nested_data.class == Array
#         nested_data.each do |nested_hash|
#           if nested_hash.class == Hash
#             array_of_names.push(nested_hash[:player_name])
#           end
#         end
#       end
#     end
#   end

#   longest_name = array_of_names[0]

#   array_of_names.each_index do |index|
#     if array_of_names[index].length > longest_name.length
#       longest_name = array_of_names[index]
#     end
#   end 
#   return longest_name
# end

# def winning_team

#   game_hash
#   array_of_brooklyn_scores = []
#   array_of_charlotte_scores = []

#   game_hash.each do |location, nested_hash|
#     nested_hash.each do |general_info, nested_data|
      
#       if nested_hash[:team_name] == "Brooklyn Nets" && nested_data.class == Array 
#         nested_data.each do |nested_hash|
#           if nested_hash.class == Hash 
#             array_of_brooklyn_scores.push(nested_hash[:points])
#           end
#         end
#       elsif nested_hash[:team_name] == "Charlotte Hornets" && nested_data.class == Array 
#         nested_data.each do |nested_hash|
#           if nested_hash.class == Hash 
#             array_of_charlotte_scores.push(nested_hash[:points])
#           end
#         end
#       end
#     end
#   end

#   brooklyn_sum = array_of_brooklyn_scores.sum
#   charlotte_sum = array_of_charlotte_scores.sum

#   charlotte_sum > brooklyn_sum ? (return "Charlotte Hornets, #{charlotte_sum}") : (return "Brooklyn Nets, #{brooklyn_sum}")
  
#   end
  
######### SOLUTIONS USING HELPER METHODS #########
  
        ######### HELPER METHODS ######### 
  
def player_hashes
  player_array = []
  game_hash.each do |team_location, first_nested_hash|
    first_nested_hash.each do |keys, arrays_and_strings|
      if arrays_and_strings.class == Array
        arrays_and_strings.each do |player_stats|
          if player_stats.class == Hash
            player_array.push(player_stats)
          end
        end
      end
    end
  end
  player_array
end


  
def team_player_info(team)
  game_hash.each do |team_location, nested_hash|
    if nested_hash[:team_name] == team
      return nested_hash[:players]
    end
  end
end

        ######### END OF HELPER METHODS ######### 
        
        

def num_points_scored(player)
  player_hashes.each do |player_hash|
    if player_hash[:player_name] == player
      return player_hash[:points]
    end
  end
end


 
def shoe_size(player)
  player_hashes.each do |player_hash|
    if player_hash[:player_name] == player
      return player_hash[:shoe]
    end
  end
end



def team_colors(team_name)
  game_hash.each do |location, nested_hash|
    if nested_hash[:team_name] == team_name
      return nested_hash[:colors]
    end
  end
end



def team_names
  array_of_team_names = []
  
  game_hash.each do |location, inner_hash|
    array_of_team_names.push(inner_hash[:team_name])
  end
  array_of_team_names
end



def player_numbers(team)
  array_of_numbers = []
  players_info = team_player_info(team)
  players_info.each do |inner_player_hashes|
    array_of_numbers.push(inner_player_hashes[:number])
  end
  array_of_numbers
end



def player_stats(player)
  player_hashes.each do |player_hash|
    if player_hash[:player_name] == player
      return player_hash
    end
  end
end



def big_shoe_rebounds
  array_of_shoe_sizes = []

  player_hashes.each do |individual_player_stats|
    array_of_shoe_sizes.push(individual_player_stats[:shoe])
   end
   
  largest_shoe = array_of_shoe_sizes.max

  player_hashes.each do |individual_player_stats|
    if individual_player_stats[:shoe] == largest_shoe
      return individual_player_stats[:rebounds]
    end
  end
end



def most_points_scored
  
  array_of_points_scored = []

  player_hashes.each do |individual_player_stats|
    array_of_points_scored.push(individual_player_stats[:points])
  end
  most_points = array_of_points_scored.max
    
  player_hashes.each do |individual_player_stats|
    if individual_player_stats[:points] == most_points
      return individual_player_stats[:player_name]
    end
  end
end



def player_with_longest_name

  array_of_names = []

  player_hashes.each do |individual_player_stats|
    array_of_names.push(individual_player_stats[:player_name])
  end

  longest_name = array_of_names[0]
  array_of_names.each do |name|
    if name.length > longest_name.length
      longest_name = name 
    end
  end
  return longest_name
end



def winning_team
  brooklyn_players = team_player_info("Brooklyn Nets")
  charlotte_players = team_player_info("Charlotte Hornets")
  
  array_of_brooklyn_scores = []
  array_of_charlotte_scores = []

  brooklyn_players.each do |player_stats|
    array_of_brooklyn_scores.push(player_stats[:points])
  end
  
  charlotte_players.each do |player_stats|
    array_of_charlotte_scores.push(player_stats[:points])
  end
  
 brooklyn_total = array_of_brooklyn_scores.sum
 charlotte_total = array_of_charlotte_scores.sum

  if charlotte_total > brooklyn_total
    return charlotte_total 
  else
    return brooklyn_total
  end
end



def long_name_steals_a_ton?
  array_of_steals = []

  player_hashes.each do |player_stats|
    array_of_steals.push(player_stats[:steals])
  end
  most_steals = array_of_steals.max

  player_hashes.each do |player_stats|
    if player_stats[:player_name] == player_with_longest_name && player_stats[:steals] == most_steals
      return true
    end
  end
  return false
end