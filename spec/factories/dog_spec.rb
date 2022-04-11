# frozen_string_literal: true
require 'rspec'
require 'rails_helper'
require_relative '../models/dog'

describe Dog, type: :model do
  describe '#bark' do # rubocop:disable RSpec/DescribeClass
    it 'returns a string' do
      dog = Dog.new
      expect(subject.bark).to be_a(String)
    end
  end
end




