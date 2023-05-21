class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.decimal :price
      t.integer :collection
      t.string :name

      t.timestamps
    end
  end
end
