require_relative '../lib/player'

describe Player do
  describe '.initialize' do
    it 'creates a new player with a name and symbol' do
      player = Player.new('player 1', 'X')

      expect(player.name).to eq('player 1')
      expect(player.symbol).to eq('X')
    end

    it 'adds the name and symbol to the class variables' do
      Player.new('player 1', 'X')

      expect(Player.class_variable_get(:@@names_taken)).to include('player 1')
      expect(Player.class_variable_get(:@@symbols_taken)).to include('X')
    end
  end

  describe '.switch_players' do
    it 'returns the first player if the current player is the first second' do
      first = Player.new('player 1', 'X')
      second = Player.new('player 2', 'O')
      current = second

      expect(Player.switch_players(first, second, current)).to eq(first)
    end

    it 'returns the second player if the current player is the first player' do
      first = Player.new('player 1', 'X')
      second = Player.new('player 2', 'O')
      current = first

      expect(Player.switch_players(first, second, current)).to eq(second)
    end
  end

  describe '.name_taken?' do
    it 'returns true if the name has been taken' do
      Player.new('player 1', 'X')

      expect(Player.name_taken?('player 1')).to be(true)
    end

    it 'returns false if the name has not been taken' do
      expect(Player.name_taken?('player 3')).to be(false)
    end
  end

  describe '.symbol_taken?' do
    it 'returns true if the symbol has been taken' do
      Player.new('player 1', 'X')

      expect(Player.symbol_taken?('X')).to be(true)
    end

    it 'returns false if the symbol has not been taken' do
      expect(Player.symbol_taken?('Y')).to be(false)
    end
  end
end
