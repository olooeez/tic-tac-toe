# frozen_string_literal: true

# The Tic Tac Toe board class
class Board
  WINNING_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].freeze

  attr_accessor :tiles

  def initialize
    @tiles = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  # Method to print the board to STDOUT
  def print
    # rubocop:disable Layout/HeredocIndentation
    puts <<~HEREDOC
    -------------
    | #{@tiles[0]} | #{@tiles[1]} | #{@tiles[2]} |
    -------------
    | #{@tiles[3]} | #{@tiles[4]} | #{@tiles[5]} |
    -------------
    | #{@tiles[6]} | #{@tiles[7]} | #{@tiles[8]} |
    -------------
    HEREDOC
    # rubocop:enable Layout/HeredocIndentation
  end

  # Method to update the board with a symbol in a specific position
  def update(index, symbol)
    @tiles[index - 1] = symbol if can_move?(index)
  end

  # Method to see if can move to a specific position
  def can_move?(index)
    @tiles[index - 1] == index
  end

  # Method to check if there's a winner
  def winner?
    WINNING_COMBINATIONS.any? do |combo|
      [@tiles[combo[0]], @tiles[combo[1]], @tiles[combo[2]]].uniq.length == 1
    end
  end

  # Mehtod to check if the board is full
  def full?
    @tiles.all? { |tile| tile =~ /[^0-9]/ }
  end
end
