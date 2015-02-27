class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :course_id
      t.string :name
      t.text :base_info

      t.timestamps null: false
    end
  end
end
