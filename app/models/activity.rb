class Activity < ActiveRecord::Base
belongs_to :trips

validates :name,
presence: true
validates :category,
presence: true
validates :location,
presence: true
validates :zipCode,
presence: true
validates :timePeriod,
presence: true

end
