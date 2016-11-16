class CreateNetWorths < ActiveRecord::Migration
  def change
    create_table :net_worths do |t|
      t.integer :asset_total_id
      t.integer :liabilities_total_id
      t.string :calculated_net_worth
      t.integer :user_id
      t.string :net_worth_date

      t.timestamps

    end
  end
end
