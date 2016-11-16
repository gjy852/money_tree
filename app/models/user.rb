class User < ApplicationRecord
  # Direct associations

  has_many   :retirement_assumptions,
             :dependent => :destroy

  has_many   :net_worths,
             :dependent => :destroy

  # Indirect associations

  has_many   :retirement_calculations,
             :through => :retirement_assumptions,
             :source => :retirement_calculation

  # Validations

end
