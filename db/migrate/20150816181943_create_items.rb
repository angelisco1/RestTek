class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :available, default: true
      t.boolean :published, default: true
      t.references :category, index: true

      t.timestamps null: false
    end
  end
end
