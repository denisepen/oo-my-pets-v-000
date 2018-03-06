class Owner

  attr_accessor :name, :species

  @@all = []

def initialize(name, species)
  @name = name
  @species = species
  @@all << self
end

# def self.save
#   @@all << self
# end

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
