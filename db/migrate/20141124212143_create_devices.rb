class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :udid
      t.references :athlete, index: true
      t.references :team, index: true

      t.timestamps null: false
    end
  end
end
