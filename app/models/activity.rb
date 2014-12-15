class Activity < ActiveRecord::Base
belongs_to :trip

validates :name,
presence: true
validates :category,
presence: true
validates :address,
presence: true
validates :zip_code,
presence: true
validates :time_period,
presence: true

end
