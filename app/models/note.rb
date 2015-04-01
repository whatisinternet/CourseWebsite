# == Schema Information
#
# Table name: notes
#
#  body       :text
#  created_at :datetime         not null
#  date       :date
#  display    :boolean
#  id         :integer          not null, primary key
#  title      :string
#  updated_at :datetime         not null
#

class Note < ActiveRecord::Base
  validates :date, presence: true
  validates :title,  length: { minimum: 5 }
  validates :body,   length: { minimum: 5 }
  validates :display, :inclusion => {:in => [true, false]}

  belongs_to :course
end
