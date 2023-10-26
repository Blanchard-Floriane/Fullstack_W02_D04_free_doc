class Specialty < ApplicationRecord
  has_many :doctors, through: :transition_specialty_doctors
end
