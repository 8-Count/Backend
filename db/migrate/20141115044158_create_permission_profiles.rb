class CreatePermissionProfiles < ActiveRecord::Migration
  def change
    create_table :permission_profiles do |t|
      t.boolean :canWrite

      t.timestamps null: false
    end
  end
end
