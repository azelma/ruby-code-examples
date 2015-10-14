class Character
  def initialize(name, strength: 10, intelligence: 10)
    @name = name
    @inventory = []
    @strength = strength
    @intelligence = intelligence
    @hit_points = 100
  end

  def introduce
    puts "Hi, my name is #{@name}"
  end

  def get_name
    @name
  end

  def greet(character)
    puts "Hi #{character.get_name}, my name is #{@name}"
  end

  def outwit(character)
    if @intelligence < character.get_intelligence
      @hit_points = @hit_points - 10
      puts "#{@name} is outwitted and takes 10 points of damage"
    elsif @intelligence == character.get_intelligence
      if Die.new.showing <= 3
        @hit_points = @hit_points - 10
        puts "#{@name} is outwitted and takes 10 points of damage"
      else
        character.take_damage(10)
        puts "#{character.get_name} is outwitted and takes 10 points of damage"
      end
    else
      character.take_damage(10)
      puts "#{character.get_name} is outwitted and takes 10 points of damage"
    end
  end

  def get_intelligence
    @intelligence
  end

  def set_intelligence(value)
    @intelligence = value
  end

  def fight(character)
    if @strength < character.get_strength
      @hit_points = @hit_points - 10
      puts "#{@name} takes 10 points of damage in a fight"
    elsif @strength == character.get_strength
      if Die.new.showing <= 3
        @hit_points = @hit_points - 10
        puts "#{@name} takes 10 points of damage in a fight"
      else
        character.take_damage(10)
        puts "#{character.get_name} takes 10 points of damage in a fight"
      end
    else
      character.take_damage(10)
      puts "#{character.get_name} takes 10 points of damage in a fight"
    end
  end

  def take_damage(amount)
    @hit_points = @hit_points - amount
  end

  def heal(amount)
    hit_points = hit_points + amount
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

class Elf < Character
  def initialize(name)
    super(name, intelligence: 20)
  end

  def twinkle
    puts "I'm super magical!"
  end
end

class Warrior < Character
  def initialize(name)
    super(name, strength: 20)
  end

  def intimidate
    puts "I'm super strong!"
  end
end
