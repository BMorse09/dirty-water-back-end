class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.null :content

      t.timestamps null: false
    end
  end
end
