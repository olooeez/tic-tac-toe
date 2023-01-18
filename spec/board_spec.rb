require_relative '../lib/board'

describe Board do
  let(:board) { Board.new }

  describe '#initialize' do
    it 'initializes the board with the correct tiles' do
      expect(board.tiles).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end

  describe '#update' do
    it 'updates the board with the given symbol in the given position' do
      board.update(1, 'X')
      expect(board.tiles).to eq(['X', 2, 3, 4, 5, 6, 7, 8, 9])
    end

    it 'does not update the board if the move is not valid' do
      board.update(1, 'X')
      board.update(1, 'O')
      expect(board.tiles).to eq(['X', 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end

  describe '#can_move?' do
    it 'returns true if the move is valid' do
      expect(board.can_move?(1)).to be true
    end

    it 'returns false if the move is not valid' do
      board.update(1, 'X')
      expect(board.can_move?(1)).to be false
    end
  end

  describe '#winner?' do
    it 'returns true if there is a winning combination on the board' do
      board.tiles = ['X', 'X', 'X', 4, 5, 6, 7, 8, 9]
      expect(board.winner?).to be true
    end

    it 'returns false if there is no winning combination on the board' do
      board.tiles = ['X', 'O', 'X', 4, 5, 6, 7, 8, 9]
      expect(board.winner?).to be false
    end
  end

  describe '#full?' do
    it 'returns true if the board is full' do
      board.tiles = %w[X O X O X O X O X]
      expect(board.full?).to be true
    end

    it 'returns false if the board is not full' do
      expect(board.full?).to be false
    end
  end
end
