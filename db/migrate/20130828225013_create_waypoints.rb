class CreateWaypoints < ActiveRecord::Migration
  def change
    create_table :waypoints do |t|
      t.string :name
      t.integer :trip_id

      t.timestamps
    end
  end
end
