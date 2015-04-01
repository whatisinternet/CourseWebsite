# == Schema Information
#
# Table name: notes
#
#  body       :text
#  course_id  :integer
#  created_at :datetime         not null
#  date       :date
#  display    :boolean
#  id         :integer          not null, primary key
#  title      :string
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Note, type: :model do

  before :each do
    @course = FactoryGirl.create(:course)
  end

  describe Note do
    it { should belong_to(:course) }
    it { should validate_length_of(:title).is_at_least(5) }
    it { should validate_length_of(:body).is_at_least(5) }
    it { should validate_presence_of(:date) }
  end
end
