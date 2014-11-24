class CreateImpacts < ActiveRecord::Migration
  def change
    create_table :impacts do |t|
      t.references :athlete, index: true
      t.float :x
      t.float :y
      t.float :z
      t.float :xrot
      t.float :yrot
      t.float :zrot
      t.datetime :timeOccurred
      t.integer :concussionStatus

      t.timestamps null: false
    end
  end
end
