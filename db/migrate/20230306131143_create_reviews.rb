class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :review
      t.integer :ratings
      t.references :mechanic, foreign_key: true
      t.references :user, foreign_key: true

    end
  end
end
