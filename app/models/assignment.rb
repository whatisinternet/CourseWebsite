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

class Assignment < ActiveRecord::Base
  validates :base_info, :name, :due, presence: true
  validates :base_info, :name, length: { minimum: 1}
  belongs_to :course
  has_many :assignment_questions

end
