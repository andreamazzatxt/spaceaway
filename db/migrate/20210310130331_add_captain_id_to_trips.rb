class AddCaptainIdToTrips < ActiveRecord::Migration[6.1]
  def change
  add_reference :trips, :captain, references: :users, index: true
  add_foreign_key :trips, :users, column: :captain_id
  end
end

