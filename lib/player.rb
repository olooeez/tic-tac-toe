class Player
  @@names_taken = []
  @@symbols_taken = []

  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol

    @@names_taken << name
    @@symbols_taken << symbol
  end

  def self.switch_players(first, second, current)
    first == current ? second : first
  end

  def self.name_taken?(name)
    @@names_taken.include?(name)
  end

  def self.symbol_taken?(symbol)
    @@symbols_taken.include?(symbol)
  end
end
