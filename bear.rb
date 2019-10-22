class Bear

attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(fish)
    @stomach.push(fish)
  end

  def food_count
    @stomach.length
  end

  def roar
    return "grraaaauuuu!"
  end

end
