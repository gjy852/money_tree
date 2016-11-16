class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :stocks_and_stock_funds
      t.string :cash
      t.integer :retirement_account
      t.integer :real_estate
      t.integer :asset_total
      t.string :bonds
      t.string :health_savings_account
      t.string :asset_detailed_info

      t.timestamps

    end
  end
end
