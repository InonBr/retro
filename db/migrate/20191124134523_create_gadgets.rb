class CreateGadgets < ActiveRecord::Migration[5.2]
  def change
    create_table :gadgets do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.integer :year
      t.string :condition
      t.text :description
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
