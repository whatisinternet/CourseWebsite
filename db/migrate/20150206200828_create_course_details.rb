class CreateCourseDetails < ActiveRecord::Migration
  def change
    create_table :course_details do |t|
      t.string :instructor
      t.string :office

      t.timestamps null: false
    end
  end
end
