require('pry')

class Tamagotchi
  @@time_food = Time.now
  @@time_sleep = Time.now
  @@time_activity = Time.now
  attr_accessor :food, :sleep, :activity

  def initialize(name)
    @name = name
    @food = 50
    @sleep = 50
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
end
