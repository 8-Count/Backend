class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.references :listener, index: true

      t.timestamps null: false
    end
  end
end
