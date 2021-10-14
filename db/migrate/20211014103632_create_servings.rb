class CreateServings < ActiveRecord::Migration[6.0]
  def change
    create_table :servings do |t|
      t.decimal :serving_price
      t.integer :serving_stock
      t.string :serving_name
      t.text :serving_description
      t.text :serving_photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
