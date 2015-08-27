class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" }, :default_url => "/images/thumb/missing.jpg"
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def forem_name
    username
  end
  has_many :subjects
  has_many :courses_users
  has_many :courses, :through => :courses_users
end
