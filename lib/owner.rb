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
    array = @pets[:dogs]
    array.collect {|dog| dog.mood = "happy"}
end

def play_with_cats
    array = @pets[:cats]
    array.collect {|cat| cat.mood = "happy"}
end

def feed_fish
    array = @pets[:fish]
    array.collect {|fish| fish.mood = "happy"}
end

def sell_pets
  @pets.clear
  Dog.new(name)
  Cat.new(name)
  Fish.new(name)

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
