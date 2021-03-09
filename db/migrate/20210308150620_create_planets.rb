class CreatePlanets < ActiveRecord::Migration[6.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.text :description
      t.text :coordinates

      t.timestamps
    end
  end
end
