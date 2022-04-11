# frozen_string_literal: true
require 'rspec'
require 'rails_helper'
require_relative '../models/dog'

describe Dog, type: :model do
  describe '#bark' do # rubocop:disable RSpec/DescribeClass
    it 'returns a string' do
      expect(subject.bark).to be_a(String)
    end
  end
  describe '#hungry?' do
    it 'returns true if hunger level is more than 5' do
      hungry_dog = Dog.new(hunger_level: 10)
      expect(hungry_dog.hungry?).to eql(true)
    end

    it 'returns false if hunger level i5 5 or less' do
      hungry_dog = Dog.new(hunger_level: 5)
      expect(hungry_dog.hungry?).to eql(false)
    end
  end
end




