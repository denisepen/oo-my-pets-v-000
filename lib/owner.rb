class Owner

  attr_accessor :name

  @@all = []
def initialize(name)
  @name = name
end

def self.save
  @@all << self
end
def self.all
  @@all
end
