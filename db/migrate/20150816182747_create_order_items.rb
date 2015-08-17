class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.text :notes
      t.references :order, index: true
      t.references :item, index: true

      t.timestamps null: false
    end
  end
end
