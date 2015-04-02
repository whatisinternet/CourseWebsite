class AddWeightAndHelpToAssignmentQuestions < ActiveRecord::Migration
  def change
    add_column :assignment_questions, :weight, :integer
    add_column :assignment_questions, :help, :text
  end
end
