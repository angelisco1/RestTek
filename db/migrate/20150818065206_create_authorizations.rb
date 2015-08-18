class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.references :role, index: true
      t.references :permission, index: true

      t.timestamps null: false
    end
  end
end
