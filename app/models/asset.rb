class Asset < ApplicationRecord
  # Direct associations

  belongs_to :asset_type

  has_one    :net_worth,
             :foreign_key => "asset_value_total_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
