#!/usr/bin/env ruby

# player ------------------------------------------------------------------------------ #
class Player
  attr_accessor :name, :team

  def initialize
    @name = name
    @team = team
  end

end

# board ------------------------------------------------------------------------------- #
class Board
  attr_accessor :board

  def initialize(board = Array.new(9, "-"))
    @board = board
  end

  def move_valid?(input)
    board[input - 1] == "-"
  end

  def take_turn(turn, value)
    board[turn - 1] = value
  end

  def win_positions
    [[0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]]
  end

  def win?(input)
    win_positions.any? {|pos| [board[pos[0]], board[pos[1]], board[pos[2]]].join == (input * 3)}
  end

  def tie?
    board.none? {|x| x == "-"}
  end
end

# game -------------------------------------------------------------------------------- #
class Game
  attr_reader :board, :user_interface, :players

  def initialize(board = Board.new, user_interface = UserInterface.new, players = [Player.new, Player.new], game_on = true)
    @board = board
    @user_interface = user_interface
    @players = players
    @game_on = game_on
  end

  def create_players
    names = user_interface.get_names(players)
    players.each_with_index {|player, i| player.name = names[i]}
  end

  def set_piece
    p_team = ["X","O"].shuffle
    players[0].team = p_team[0]
    players[1].team = p_team[1]
    user_interface.assign_piece(players)
  end

  def select_first_player
    players.shuffle!
    user_interface.first_turn(players[1])
  end

  def make_turn
    turn = user_interface.get_turn(players[0], board)
    board.take_turn(turn, players[0].team)
  end

  def intro
    user_interface.instructions
    create_players
    set_piece
    select_first_player
  end

  def game_over?(input)
    board.tie? || board.win?(input)
  end

  def play
    intro
    until game_over?(players[0].team)
      players.reverse!
      make_turn
      user_interface.display(board.board)
    end
    user_interface.declare_win(players[0], board)
  end
end
