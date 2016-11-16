class Asset < ApplicationRecord
  # Direct associations

  has_one    :net_worth,
             :foreign_key => "asset_total_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
