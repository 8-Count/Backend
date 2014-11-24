class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :client, index: true
      t.string :sport

      t.timestamps null: false
    end
  end
end
