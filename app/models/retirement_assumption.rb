class RetirementAssumption < ApplicationRecord
  # Direct associations

  has_one    :retirement_calculation,
             :foreign_key => "assumptions_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
