class University < ActiveRecord::Migration
  def change
  	remove_column :universities, :country
  end
end
