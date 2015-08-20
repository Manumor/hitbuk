class University < ActiveRecord::Base
	has_many :courses 
	belongs_to :country
end
