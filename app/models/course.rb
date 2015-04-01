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

class Course < ActiveRecord::Base
	validates :code, :description, presence: true
	validates :code, length: { is: 5 }
	validates :description, length: { minimum: 15 }

	belongs_to :user
  has_many   :lectures
  has_many   :assignments
  has_many   :notes
end
