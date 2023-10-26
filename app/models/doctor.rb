class Doctor < ApplicationRecord
  has_many :appointments
  has_many :specialties, through: :transition_specialty_doctors
  has_many :patients, through: :appointments
  #ici patients prend un "s" puisque le doc a plusieurs patientS
  belongs_to :city
end
