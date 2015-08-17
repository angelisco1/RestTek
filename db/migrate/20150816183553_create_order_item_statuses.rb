class CreateOrderItemStatuses < ActiveRecord::Migration
  def change
    create_table :order_item_statuses do |t|
      t.references :status, index: true
      t.references :order_item, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
