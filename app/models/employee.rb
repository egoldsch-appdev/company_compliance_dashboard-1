class Employee < ApplicationRecord
  # Direct associations

  has_many   :participations,
             :dependent => :destroy

  has_many   :requirements,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
