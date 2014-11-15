class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.references :athlete, index: true
      t.string :udid
      t.references :program, index: true

      t.timestamps null: false
    end
  end
end
