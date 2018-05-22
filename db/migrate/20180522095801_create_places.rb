class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :title
      t.text :address
      t.text :description
      t.integer :price
      t.text :equipment
      t.string :destroy_pack
      t.string :category
      t.integer :rate
      t.integer :sleepings
      t.text :tools
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
