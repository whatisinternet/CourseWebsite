# == Schema Information
#
# Table name: assignment_questions
#
#  assignment_id   :integer
#  created_at      :datetime         not null
#  id              :integer          not null, primary key
#  question        :text
#  question_number :integer
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe AssignmentQuestion, type: :model do
  it "should belong to Assignment" do
    should ( belong_to(:assignment))
  end
    it "should validate length" do
      should validate_length_of(:question).is_at_least(10)
      should validate_length_of(:question_number).is_at_least(1)
    end
    it "should validate presnece of" do
      should validate_presence_of(:question_number)
      should validate_presence_of(:question)
    end
end
