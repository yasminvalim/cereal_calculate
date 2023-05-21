class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :line_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
