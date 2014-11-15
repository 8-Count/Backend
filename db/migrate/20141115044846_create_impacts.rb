class CreateImpacts < ActiveRecord::Migration
  def change
    create_table :impacts do |t|
      t.float :x
      t.float :y
      t.float :z
      t.float :xaccel
      t.float :yaccel
      t.float :zaccel
      t.datetime :timelog
      t.references :athlete, index: true
      t.integer :concussedstatus

      t.timestamps null: false
    end
  end
end
