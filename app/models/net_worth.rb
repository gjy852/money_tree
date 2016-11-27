class NetWorth < ApplicationRecord
  # Direct associations

  belongs_to :liabilities_total,
             :class_name => "Liability",
             :foreign_key => "liabilities_value_total_id"

  belongs_to :asset_total,
             :class_name => "Asset",
             :foreign_key => "asset_value_total_id"

  has_many   :historical_net_worths,
             :foreign_key => "net_worth_total_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
