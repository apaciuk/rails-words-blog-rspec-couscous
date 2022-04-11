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

    describe 'not_hungry?' do
      it 'returns false if hunger level is less than 5' do
        not_hungry_dog = Dog.new(hunger_level: 4)
        expect(not_hungry_dog.hungry?).to eql(false)
      end
    end

    describe '#happy?' do
      it 'returns true if happiness level is more than 5' do
        happy_dog = Dog.new(happiness_level: 10)
        expect(happy_dog.happy?).to eql(true)
      end
    end

    describe '#not_happy?' do
      it 'returns true if happiness level is more than 5' do
        happy_dog = Dog.new(happiness_level: 3)
        expect(happy_dog.happy?).to eql(false)
      end
    end
  end
end




