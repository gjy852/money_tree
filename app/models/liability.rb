class Liability < ApplicationRecord
  # Direct associations

  has_one    :net_worth,
             :foreign_key => "liabilities_total_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
