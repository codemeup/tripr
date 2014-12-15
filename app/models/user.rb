class User < ActiveRecord::Base
has_and_belongs_to_many :trips

has_secure_password
validates :username,
presence: true,
uniqueness: true
validates :password,
presence: true
validates :email,
presence: true

end
