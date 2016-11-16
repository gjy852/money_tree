class RetirementCalculation < ApplicationRecord
  # Direct associations

  belongs_to :assumptions,
             :class_name => "RetirementAssumption"

  # Indirect associations

  has_one    :user,
             :through => :assumptions,
             :source => :user

  # Validations

end
