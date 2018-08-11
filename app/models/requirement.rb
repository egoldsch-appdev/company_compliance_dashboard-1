class Requirement < ApplicationRecord
  # Direct associations

  belongs_to :employee,
             :counter_cache => true

  # Indirect associations

  # Validations

end
