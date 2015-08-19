class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.boolean :requires_assignee, default: false

      t.timestamps null: false
    end
  end
end
