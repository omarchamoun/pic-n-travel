class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  # user = User.new(email: profile_params["email"])
  #     user.password = Devise.friendly_token[0,20]  # Fake password for validation
  #     user.save
  #     User.create(user_id: user.id)
end
