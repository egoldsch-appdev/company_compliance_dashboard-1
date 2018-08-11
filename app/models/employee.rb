class Employee < ApplicationRecord
  # Direct associations

  belongs_to :department,
             :counter_cache => true

  has_many   :participations,
             :dependent => :destroy

  has_many   :requirements,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
