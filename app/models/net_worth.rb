class NetWorth < ApplicationRecord
  # Direct associations

  belongs_to :asset_total,
             :class_name => "Asset"

  belongs_to :user

  # Indirect associations

  # Validations

end
