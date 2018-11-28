require('tamagotchi')
require('rspec')

describe(Tamagotchi) do
  describe('#feed') do
    it('Adds food to the food value') do
      quinn = Tamagotchi.new("Quinn")
      expect(quinn.feed(10)).to(eq(60))
    end
  end
  describe('#feed') do
    it('Resets the time_food value') do
      quinn = Tamagotchi.new("quinn")
      x = quinn.food_time
      sleep 1
      quinn.feed(10)
      expect(quinn.food_time).not_to(eq(x))
    end
  end
  describe('#feed') do
    it('Adds food to the food value') do
      quinn = Tamagotchi.new("Quinn")
      expect(quinn.feed(70)).to(eq(100))
    end
  end
end
