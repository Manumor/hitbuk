class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|

    	t.string :name 
    	t.text :description 
    	t.string :alevels
    	t.integer :ibpoints
    	t.text :aextra
    	t.text :ibextra
    	t.integer :university_id

      t.timestamps null: false
    end
  end
end