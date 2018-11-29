require('pry')

class Tamagotchi

  @@time_food = Time.now
  @@time_rest = Time.now
  @@time_activity = Time.now
  attr_accessor :food, :rest, :activity
  attr_reader :name
  def initialize(name)
    @name = name
    @food = 50
    @rest = 50
    @activity = 50
  end

  def feed(food)
    @@time_food = Time.now
    if (food + self.food) > 100
      x = (food + self.food) - 100
      self.food = (food + self.food) - x
    else
      @food += food
    end
  end

  def food_time
    @@time_food
  end

  def update
    time = Time.new()
    sub_hunger = time - @@time_food
    sub_rest = time - @@time_rest
    sub_boredom = time - @@time_activity
  end
end
