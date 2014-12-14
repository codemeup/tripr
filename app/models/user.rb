class User < ActiveRecord::Base
has_and_belongs_to_many :trips

validates :username,
presence: true,
uniqueness: true
validates :password,
presence: true
validates :email,
presence: true

end
