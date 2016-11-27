class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :asset_type_id
      t.integer :user_id
      t.integer :asset_value

      t.timestamps

    end
  end
end
