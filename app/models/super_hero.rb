class SuperHero
  attr_accessor :name, :power, :bio 
  
  @@super_heroes = []
  
  def initialize(hero_data)
    @name = hero_data[:name]
    @power = hero_data[:power]
    @bio = hero_data[:bio]
    @@super_heroes << self
  end
  
  def self.all 
    @@super_heroes.all
  end 
end