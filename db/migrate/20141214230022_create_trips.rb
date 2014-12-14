class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :tripName
      t.string :primaryLocation
      t.string :startDate
      t.string :endDate
      t.string :notes
      t.string :image
      t.string :weather
      t.string :people
      t.string :created_at

      t.timestamps
    end
  end
end
