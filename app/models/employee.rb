class Employee < ApplicationRecord
  # Direct associations

  has_many   :requirements,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
