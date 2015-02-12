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

class Lecture < ActiveRecord::Base
  validates :name, presence: true
  validates :content, length: { minimum: 50 }
  validates :slides, :format => URI::regexp(%w(http https))

  belongs_to :course
end
