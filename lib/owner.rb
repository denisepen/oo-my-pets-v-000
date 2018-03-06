class Owner

  attr_accessor :name, :pets, :cat, :dog, :fish
  attr_reader :species

  @@all = []

def initialize(name)
  @name = name
  @@all << self
  @pets = {fishes: [], cats: [], dogs: []}
end

def species
  @species = species
end
def buy_fish

end

def buy_cat

end

def buy_dog

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
