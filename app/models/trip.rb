class Trip < ActiveRecord::Base
has_many :trip_users
has_many :users, through: :trip_users
has_many :activities

validates :trip_name,
presence: true
validates :primary_location,
presence: true
validates :start_date,
presence: true
validates :end_date,
presence: true

end
