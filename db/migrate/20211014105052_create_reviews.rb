class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.decimal :rating
      t.references :command, null: false, foreign_key: true
      t.references :serving, null: false, foreign_key: true

      t.timestamps
    end
  end
end
