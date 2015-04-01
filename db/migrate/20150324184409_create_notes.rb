class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body
      t.date :date
      t.boolean :display

      t.timestamps null: false
    end
  end
end
