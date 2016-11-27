class User < ApplicationRecord
  # Direct associations

  has_many   :liabilities,
             :dependent => :destroy

  has_many   :assets,
             :dependent => :destroy

  has_many   :retirement_assumptions,
             :dependent => :destroy

  has_many   :net_worths,
             :dependent => :destroy

  # Indirect associations

  has_many   :historical_net_worths,
             :through => :net_worths,
             :source => :historical_net_worths

  has_many   :retirement_calculations,
             :through => :retirement_assumptions,
             :source => :retirement_calculation

  # Validations

end
