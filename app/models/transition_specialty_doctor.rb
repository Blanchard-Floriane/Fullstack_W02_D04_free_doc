class TransitionSpecialtyDoctor < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty
end
