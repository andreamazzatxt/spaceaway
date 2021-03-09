class CreateSpaceships < ActiveRecord::Migration[6.1]
  def change
    create_table :spaceships do |t|
      t.string :name
      t.integer :capacity
      t.string :speciality

      t.timestamps
    end
  end
end
