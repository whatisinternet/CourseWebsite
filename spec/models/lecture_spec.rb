# == Schema Information
#
# Table name: lectures
#
#  content    :text
#  course_id  :integer
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string           not null
#  slides     :string
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Lecture, type: :model do

    describe Lecture do
      it { should belong_to(:course) }
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:content).is_at_least(50) }
      it { should allow_value(Faker::Internet.url).for(:slides) }
    end

end
