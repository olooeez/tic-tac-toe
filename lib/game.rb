require_relative 'player'
require_relative 'board'

class Game
  def initialize
    system 'clear||cls'
    puts '|-------- Tic Tac Toe --------|'

    puts "\nSome basic information for the two players:\n\n"
    @first = init_player

    puts "\n|-----------------------------|\n\n"
    @second = init_player

    @current = @first

    @board = Board.new
  end

  def run
    loop do
      system 'clear||cls'
      puts 'Here is your Tic Tac Toe table:'
      @board.print
      index = position
      @board.update(index, @current.symbol)

      if @board.winner?
        system 'clear||cls'
        puts "#{@current.name} wins!"
        sleep 2
        break
      end

      if @board.full?
        system 'clear||cls'
        puts 'It\s a draw!'
        sleep 2
        break
      end

      @current = Player.switch_players(@first, @second, @current)
    end
  end

  private

  def init_player
    name = nil
    symbol = nil

    loop do
      print '• Player name: '
      name = gets.chomp

      break unless Player.name_taken?(name)

      puts 'Invalid name. Try again.'
    end

    loop do
      print '• Player symbol: '
      symbol = gets.chomp

      break unless Player.symbol_taken?(symbol)

      puts 'Invalid name. Try again.'
    end

    Player.new(name, symbol)
  end

  def position
    index = nil

    loop do
      print "• #{@current.name}, enter your index (1-9): "
      index = gets.chomp.to_i

      break if index.between?(1, 9) && @board.can_move?(index)

      puts 'Invalid index. Please try again.'
    end

    index
  end
end
