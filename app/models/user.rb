class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


 has_one :profile
 before_save :create_profile

 def create_profile
  unless self.profile
    self.profile = Profile.create
  end
 end

end
