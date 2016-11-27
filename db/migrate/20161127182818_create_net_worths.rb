class CreateNetWorths < ActiveRecord::Migration
  def change
    create_table :net_worths do |t|
      t.integer :asset_value_total_id
      t.integer :liabilities_value_total_id
      t.integer :net_worth_total_id
      t.integer :user_id
      t.datetime :date

      t.timestamps

    end
  end
end
