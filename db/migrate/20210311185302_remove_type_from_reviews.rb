class RemoveTypeFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :type, :string
  end
end
