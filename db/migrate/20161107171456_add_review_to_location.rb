class AddReviewToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :review, :text
  end
end
