class Trip < ActiveRecord::Base
has_many :trip_users
has_many :users, through: :trip_users
has_many :activities

validates :trip_name,
presence: true
validates :primary_location_city,
presence: true
validates :primary_location_country,
presence: true
validates :start_date,
presence: true
validates :end_date,
presence: true
# validate :validate_end_date_before_start_date
  # def validate_end_date_before_start_date
  #   if end_date && start_date
  #     errors.add(:end_date, "Oops, you're returning before you leave - please check the dates you've entered!") if end_date < start_date
  #     flash[:error] = "Oi!"
  #   end
  # end

end
