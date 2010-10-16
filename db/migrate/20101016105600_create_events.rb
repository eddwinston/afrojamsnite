class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :start_time
      t.datetime :stop_time
      t.boolean :all_day
      t.string :venue_name
      t.string :venue_address
      t.string :venue_city
      t.decimal :longitude
      t.decimal :latitude
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
