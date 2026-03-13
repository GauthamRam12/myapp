class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} makes a sound"
  end
end


class Mammal < Animal
  def initialize(name)
    super(name)
  end
end


class Bird < Animal
  def initialize(name)
    super(name)
  end
end


class Dog < Mammal
  def speak
    "#{name} barks"
  end
end


class Cat < Mammal
  def speak
    "#{name} meows"
  end
end


class Eagle < Bird
  def speak
    "#{name} screeches"
  end
end


class Parrot < Bird
  def speak
    "#{name} talks"
  end
end


# Creating objects
dog = Dog.new("Rocky")
cat = Cat.new("Kitty")
eagle = Eagle.new("Sky")
parrot = Parrot.new("Mithu")

# Calling methods
puts dog.speak
puts cat.speak
puts eagle.speak
puts parrot.speakg
