class Character
  def initialize(name)
    @name = name
    @inventory = []
    @strength = 10
    @intelligence = 10
    @hit_points = 100
  end

  def greet
    "Hi, my name is #{@name}"
  end

  def outwit(character)
    return @intelligence > character.get_intelligence
  end

  def get_intelligence
    @intelligence
  end

  def set_intelligence(int)
    @intelligence = int
  end

  def fight(character)
    if @strength < character.get_strength
      @hit_points = @hit_points - 10
    end
  end

  def get_strength
    @strength
  end

  def set_strength(value)
    @strength = value
  end

  def get(item)
    @inventory << item
  end

  def give(item, character)
    return unless @inventory.contains?(item)
    @inventory.delete(item)
    character.get(item)
  end
end
