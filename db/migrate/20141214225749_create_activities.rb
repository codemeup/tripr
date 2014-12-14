class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :summary
      t.string :link
      t.string :category
      t.string :location
      t.string :zipCode
      t.boolean :booked
      t.time :timePeriod
      t.datetime :proposedOn
      t.boolean :booked
      t.datetime :bookedOn
      t.float :rating
      t.string :comments
      t.string :created_at
      t.integer :trip_id


      t.timestamps
    end
  end
end
