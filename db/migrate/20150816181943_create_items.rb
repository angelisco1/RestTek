class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :available
      t.boolean :published
      t.references :category, index: true

      t.timestamps null: false
    end
  end
end
