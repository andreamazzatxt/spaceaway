class AddBookingToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :booking, null: false, foreign_key: true
  end
end
