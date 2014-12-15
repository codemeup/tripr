class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :trip_name
      t.string :primary_location_city
      t.string :primary_location_country
      t.string :start_date
      t.string :end_date
      t.string :notes
      t.string :image
      t.string :weather
      t.string :people
      t.string :created_at

      t.timestamps
    end
  end
end
