class Fish
  attr_accessor :mood, :owner
  attr_reader :name, :species

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @species = species

  end
end
