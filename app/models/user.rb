class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
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
