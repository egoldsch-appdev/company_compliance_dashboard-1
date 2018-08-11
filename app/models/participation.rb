class Participation < ApplicationRecord
  # Direct associations

  belongs_to :elearning,
             :counter_cache => true

  belongs_to :employee,
             :counter_cache => true

  # Indirect associations

  # Validations

end
