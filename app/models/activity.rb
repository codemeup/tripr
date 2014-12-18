class Activity < ActiveRecord::Base
belongs_to :trip

validates :title,
presence: true
validates :category,
presence: true
validates :address,
presence: true
validates :zip_code,
presence: true
validates :duration,
presence: true

end
