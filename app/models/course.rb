class Course < ActiveRecord::Base
  belongs_to :university  
  has_many :courses_users
  has_many :users, :through => :courses_users
end 

