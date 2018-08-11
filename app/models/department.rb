class Department < ApplicationRecord
  # Direct associations

  has_many   :requirements,
             :dependent => :destroy

  has_many   :employees,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
