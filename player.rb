class Player
  attr_accessor :name, :life
  def initialize (name)
    self.name = name
    self.life = 3
  end
  def lose_life
    self.life -=1
  end
end
