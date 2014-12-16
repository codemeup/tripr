class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :summary
      t.string :link
      t.string :category
      t.string :address
      t.string :zip_code
      t.boolean :booked, default: false
      t.time :time_period
      t.datetime :proposed_on
      t.datetime :booked_on
      t.string :created_at
      t.integer :trip_id
      t.float :cost


      t.timestamps
    end
  end
end
