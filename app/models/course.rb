# == Schema Information
#
# Table name: courses
#
#  code        :string
#  created_at  :datetime         not null
#  description :string
#  id          :integer          not null, primary key
#  section     :string
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Course < ActiveRecord::Base
	validates :code, :description, :section, presence: true
	validates :code, length: { is: 5 }
	validates :section, length: { minimum: 1 }
	validates :description, length: { minimum: 15 }

	belongs_to :user
end
