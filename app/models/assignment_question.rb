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

class AssignmentQuestion < ActiveRecord::Base
  validates :question, length: { minimum: 10 }
  validates :question_number, length: { minimum: 1 }
  validates :question_number, :question, presence: true
  belongs_to :assignment
end
