class AddHistoricalNetWorthCountToNetWorths < ActiveRecord::Migration[5.0]
  def change
    add_column :net_worths, :historical_net_worths_count, :integer
  end
end
