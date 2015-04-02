class AddLectureDateToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :lecture_date, :date
  end
end
