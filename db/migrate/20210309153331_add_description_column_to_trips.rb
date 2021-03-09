class AddDescriptionColumnToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :description, :text
  end
end
