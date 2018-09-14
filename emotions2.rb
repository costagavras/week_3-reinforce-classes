# Write a Person class with the following characteristics:
#
# name (string)
# emotions (hash)
# Initialize an instance of Person using your emotions hash from exercise 1.
# require_relative("emotions1")

require "pry"

  hh_emotions = {:elation => 3, :happiness => 2, :sadness => 1, :frustration => 3, :helplessness => 1, :anger => 2}


class Person

  @@persons = []

  def initialize(name, emotions, level)
    @name = name
    @emotions = emotions
    @level = level
  end

# binding.pry
  def self.create(name, emotions, level)
    new_person = Person.new(name, emotions, level)
    @@persons << new_person
    return new_person
  end

  def self.all
    @@persons
  end

  #getters

  def emotions
    return @emotions
  end

  def level
    return @level
  end

  def feeling_now
    level_string = ""
    if self.level == 3
      level_string = "high"
    elsif self.level == 2
      level_string = "medium"
    else
      level_string = "low"
    end

    "I am feeling a #{level_string} amount of #{self.emotions}."
  end

end

#
sandy = Person.create("Sandy", hh_emotions.keys[0], hh_emotions.values[0])
puts Person.all.inspect
# puts hh_emotions.values[0]
# puts hh_emotions.keys[0]
puts sandy.feeling_now
# puts Person.all.inspect
