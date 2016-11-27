class Liability < ApplicationRecord
  # Direct associations

  belongs_to :liabilities_type,
             :class_name => "LiabilityType"

  has_one    :net_worth,
             :foreign_key => "liabilities_value_total_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
