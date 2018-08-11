class Department < ApplicationRecord
  # Direct associations

  has_many   :employees,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
