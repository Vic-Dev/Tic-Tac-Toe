
def display_board(board)
  puts " "
  puts " #{board[0][0]} | #{board[0][1]} | #{board[0][2]} "
  puts "-" * 11
  puts " #{board[1][0]} | #{board[1][1]} | #{board[1][2]} "
  puts "-" * 11
  puts " #{board[2][0]} | #{board[2][1]} | #{board[2][2]} \n\n"
end


def play_game(num_players = 2)
  board = Array.new(3) { Array.new(3, "?") }
  display_board(board)
  valid = false
  while !valid
    puts "Choose a square in the format (row, column)"
    player_spot = gets.chomp
    player_spot_re = /^\(?([0-2]),?([0-2])\)?$/
    coordinates = player_spot_re.match(player_spot)
    valid = true unless coordinates.nil?
  end
end

answer = nil

while answer != "n" && answer != "y"
  puts "Would you like to play? y/n"
  answer = gets.chomp
  answer.downcase!
  if answer == "n"
    abort
  elsif answer == "y"
    play_game
  end
end