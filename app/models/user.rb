class User < ActiveRecord::Base
has_many :trip_users
has_many :trips, through: :trip_users


has_secure_password
validates :username,
presence: true,
uniqueness: true
validates :password,
presence: true
validates :email,
presence: true

end
