class Owner
  attr_accessor :name, :pets
  attr_reader :species

  
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def self.reset_all
    @@all = []
  end
  def self.all
    @@all
  end
  def self.count
    @@all.count
  end
  def say_species
    "I am a human."
  end
  def buy_fish(name)
    @pets[:fishes].push(Fish.new(name))
  end
  def buy_cat(name)
    @pets[:cats].push(Cat.new(name))
  end
  def buy_dog(name)
    @pets[:dogs].push(Dog.new(name))
  end
  def walk_dogs
    @pets[:dogs].each {|pet| pet.mood="happy"}
  end
  def play_with_cats
    @pets[:cats].each {|pet| pet.mood="happy"}
  end
  def feed_fish
    @pets[:fishes].each {|pet| pet.mood="happy"}
  end
  def sell_pets    
    @pets[:fishes].collect do |pet|
      pet.mood="nervous"
    end
    @pets[:dogs].collect do |pet|
      pet.mood="nervous"
    end
    @pets[:cats].collect do |pet|
      pet.mood="nervous"
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end