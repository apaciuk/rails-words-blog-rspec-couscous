# frozen_string_literal: true

require 'rails_helper'
require_relative '../models/dog'

RSpec.describe Dog, type: :model do
  subject { Dog.new }
  describe '#bark' do # rubocop:disable RSpec/DescribeClass
    it 'returns a string' do
      dog = Dog.new
      expect(dog.bark).to be_a(String)
    end
  end
end




