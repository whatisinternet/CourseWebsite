class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.date :due_date
      t.float :weight
      t.string :support
      t.text :content

      t.timestamps null: false
    end
  end
end
