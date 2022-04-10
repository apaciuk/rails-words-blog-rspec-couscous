# == Schema Information
#
# Table name: words
#
#  id         :bigint(8)        not null, primary key
#  lamguage   :string
#  value      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Word, type: :model do
  describe 'columns' do
    it { is_expected.to have_db_column(:lamguage).of_type(:string) }
    it { is_expected.to have_db_column(:value).of_type(:string) }
  end
end
