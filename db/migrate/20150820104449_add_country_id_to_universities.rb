class AddCountryIdToUniversities < ActiveRecord::Migration
  def change
    add_column :universities, :country_id, :integer
  end
end
