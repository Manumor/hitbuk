class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|

    	t.string :name
    	t.text :description
    	t.string :city
    	t.string :country
    	t.string :image 
    	t.string :link

      t.timestamps null: false
    end
  end
end
