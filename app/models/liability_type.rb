class LiabilityType < ApplicationRecord
  # Direct associations

  has_many   :liabilities,
             :foreign_key => "liabilities_type_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
