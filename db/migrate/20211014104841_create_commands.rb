class CreateCommands < ActiveRecord::Migration[6.0]
  def change
    create_table :commands do |t|
      t.decimal :entry
      t.decimal :price
      t.references :user, null: false, foreign_key: true
      t.references :serving, null: false, foreign_key: true

      t.timestamps
    end
  end
end
