# == Schema Information
#
# Table name: assignments
#
#  base_info  :text
#  course_id  :integer
#  created_at :datetime         not null
#  due        :date
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Assignment, type: :model do

  describe "relations" do
    it "should have many questions" do
      should( have_many(:assignment_questions))
    end
    it "should belong to courses" do
      should( belong_to(:course))
    end
    it "should validate length" do
      should validate_length_of(:base_info).is_at_least(1)
      should validate_length_of(:name).is_at_least(1)
    end
    it "should validate presnece" do
      should validate_presence_of(:due)
      should validate_presence_of(:base_info)
      should validate_presence_of(:name)
    end
  end


end
