class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :role, index: true
      t.references :status, index: true

      t.timestamps null: false
    end
  end
end
