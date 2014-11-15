class CreateListeners < ActiveRecord::Migration
  def change
    create_table :listeners do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :permissionprofile, index: true

      t.timestamps null: false
    end
  end
end
