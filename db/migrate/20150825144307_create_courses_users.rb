class CreateCoursesUsers < ActiveRecord::Migration
  def change
    create_table :courses_users do |t|

    	t.string :user_id 
    	t.string :course_id
    	
      t.timestamps null: false
    end
  end
end
