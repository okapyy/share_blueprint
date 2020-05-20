class CreateCads < ActiveRecord::Migration[5.2]
  def change
    create_table :cads do |t|
      t.text :design,          null: false
      t.string :company,       null: false
      t.string :product_name,  null: false
      t.text :detail
      t.integer :user,      null: false, foreign_key: true
      t.integer :genre,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
