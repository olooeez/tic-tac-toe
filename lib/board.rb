class Board
  WINNING_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].freeze

  attr_accessor :tiles

  def initialize
    @tiles = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def print
    puts <<~HEREDOC
    -------------
    | #{@tiles[0]} | #{@tiles[1]} | #{@tiles[2]} |
    -------------
    | #{@tiles[3]} | #{@tiles[4]} | #{@tiles[5]} |
    -------------
    | #{@tiles[6]} | #{@tiles[7]} | #{@tiles[8]} |
    -------------
    HEREDOC
  end

  def update(index, symbol)
    @tiles[index - 1] = symbol if can_move?(index)
  end

  def can_move?(index)
    @tiles[index - 1] == index
  end

  def winner?
    WINNING_COMBINATIONS.any? do |combo|
      [@tiles[combo[0]], @tiles[combo[1]], @tiles[combo[2]]].uniq.length == 1
    end
  end

  def full?
    @tiles.all? { |tile| tile.to_s =~ /[^0-9]/ }
  end
end
