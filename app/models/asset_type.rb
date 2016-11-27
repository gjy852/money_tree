class AssetType < ApplicationRecord
  # Direct associations

  has_many   :assets,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
