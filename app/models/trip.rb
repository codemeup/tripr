class Trip < ActiveRecord::Base
has_and_belongs_to_many :users
has_many :activities

validates :tripName,
presence: true
validates :primaryLocation,
presence: true
validates :startDate,
presence: true
validates :endDate,
presence: true

end
