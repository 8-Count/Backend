class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.references :sport, index: true
      t.references :organization, index: true

      t.timestamps null: false
    end
  end
end
