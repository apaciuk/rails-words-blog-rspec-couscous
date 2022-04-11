# frozen_string_literal: true

class Dog

  def initialize(hunger_level: 0, happiness_level: 0)
    @hunger_level = hunger_level
    @happiness_level = happiness_level
  end

  def bark
    "Woof!"
  end

  def hungry?
    @hunger_level > 5
  end

  def happy?
    @happiness_level > 5
  end

  end
