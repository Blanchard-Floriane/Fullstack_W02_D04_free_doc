class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  #ici patients prend un "s" puisque le doc a plusieurs patientS
end
