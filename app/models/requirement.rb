class Requirement < ApplicationRecord
  # Direct associations

  belongs_to :department,
             :counter_cache => true

  belongs_to :employee,
             :counter_cache => true

  # Indirect associations

  # Validations

end
