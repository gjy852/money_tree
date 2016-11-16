class RetirementCalculation < ApplicationRecord
  # Direct associations

  belongs_to :assumptions,
             :class_name => "RetirementAssumption"

  # Indirect associations

  # Validations

end
