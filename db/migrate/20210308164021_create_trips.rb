class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.references :spaceship, null: false, foreign_key: true
      t.references :planet, null: false, foreign_key: true
      t.integer :price
      t.date :departure_date
      t.date :arrival_date
      t.jsonb :passengers

      t.timestamps
    end
  end
end
