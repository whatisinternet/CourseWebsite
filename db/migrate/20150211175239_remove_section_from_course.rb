class RemoveSectionFromCourse < ActiveRecord::Migration
  def change
    remove_column :courses, :section, :string
    
  end
end
