class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  GENDER_TYPES = ["Not telling","Male", "Female"]
  has_attached_file :avatar, :styles => {:thumb => "100x100>"}
  validates_attachment_content_type :avatar, :content_type => ["image/jpg",
                                                                   "image/jpeg", "image/png", "image/gif"]
end
