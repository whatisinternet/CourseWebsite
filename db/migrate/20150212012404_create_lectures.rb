class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name, null: false
      t.text :content
      t.string :slides

      t.timestamps null: false
    end
  end
end
