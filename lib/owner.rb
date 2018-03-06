class Owner

  attr_accessor :name, :pets, :cat, :dog, :fish
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
  f.name = name
  @pets[:fish] = f
  # f.owner = self

end

def buy_cat(name)

end

def buy_dog(name)

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
