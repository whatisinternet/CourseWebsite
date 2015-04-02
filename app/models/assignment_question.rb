# == Schema Information
#
# Table name: assignment_questions
#
#  assignment_id   :integer
#  created_at      :datetime         not null
#  help            :text
#  id              :integer          not null, primary key
#  question        :text
#  question_number :integer
#  updated_at      :datetime         not null
#  weight          :integer
#

class AssignmentQuestion < ActiveRecord::Base
  validates :question, length: { minimum: 10 }
  validates :question_number, length: { minimum: 1 }
  validates :question_number, :question, :help, :weight,  presence: true
  validates :help, length: {minimum: 1}
  belongs_to :assignment
end
