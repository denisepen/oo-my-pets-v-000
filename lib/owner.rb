class Owner

  attr_accessor :name

  @@all = []

def initialize(name)
  @name = name
  # @@all <<
end

def self.save
  @@all << self
end

def self.all
  @@all
end

def self.count
  self.all.count
end
