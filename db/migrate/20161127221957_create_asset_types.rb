class CreateAssetTypes < ActiveRecord::Migration
  def change
    create_table :asset_types do |t|
      t.integer :checking_account
      t.string :savings_account
      t.string :other_cash_equivalents
      t.integer :brokerage
      t.integer :retirement
      t.string :real_estate
      t.integer :other_invested_assets
      t.integer :principal_home
      t.integer :car
      t.string :other_use_assets

      t.timestamps

    end
  end
end
