class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :summary
      t.string :link
      t.string :category
      t.string :address
      t.string :zip_code
      t.boolean :booked, default: false
      t.integer :duration
      t.time :time
      t.date :proposed_on
      t.date :booked_on
      t.string :created_at
      t.integer :trip_id
      t.float :cost


      t.timestamps
    end
  end
end
