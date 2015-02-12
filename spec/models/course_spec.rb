# == Schema Information
#
# Table name: courses
#
#  code        :string
#  created_at  :datetime         not null
#  description :string
#  id          :integer          not null, primary key
#  updated_at  :datetime         not null
#  user_id     :integer
#

require 'rails_helper'

RSpec.describe Course, type: :model do
  describe Course do
  	it { should belong_to(:user) }
  	it { should validate_presence_of(:description) }
    it { should have_many(:lectures) }
  	it { should validate_length_of(:code).is_equal_to(5) }
  	it { should validate_length_of(:description).is_at_least(15) }
  end
end
