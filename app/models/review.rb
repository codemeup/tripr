class Review < ActiveRecord::Base
belongs_to :activity

validates :rating,
presence: true
end
