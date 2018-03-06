class Owner

  attr_accessor :name, :pets, :cat, :dog, :fish, :mood
  attr_reader :species

  @@all = []

def initialize(name)
  @name = name
  @@all << self
  @pets = {fishes: [], cats: [], dogs: []}
end

def species(species = "human")
  @species = species
end

def say_species
   "I am a #{species}."
end

def buy_fish(name)
  f = Fish.new(name)
  @pets[:fishes] << f
  f.owner = self

end

def buy_cat(name)
  c = Cat.new(name)
  @pets[:cats] << c
  c.owner = self
end

def buy_dog(name)
  d = Dog.new(name)
  @pets[:dogs] << d
  # d.owner = self
end
def walk_dogs
  d.mood = "happy"
end

def self.all
  @@all
end

def self.count
@@all.length
end

def self.reset_all
  @@all = []
end
end
