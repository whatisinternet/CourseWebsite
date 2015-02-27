class CreateAssignmentQuestions < ActiveRecord::Migration
  def change
    create_table :assignment_questions do |t|
      t.integer :assignment_id
      t.integer :question_number
      t.text :question

      t.timestamps null: false
    end
  end
end
