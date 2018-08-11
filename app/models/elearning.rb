class Elearning < ApplicationRecord
  # Direct associations

  has_many   :participations,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
