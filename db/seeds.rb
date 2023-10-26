require 'faker' 

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all
TransitionSpecialtyDoctor.destroy_all
#=> comme ça à chaque phase de test ça ne me génère pas mille instances

5.times do |index|
  City.create!(
    name: Faker::Address.city
   )
end

5.times do |index|
   Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city: City.all.sample
    )
end

15.times do |index|
   Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample
   )
end

30.times do |index|
   Appointment.create!(
     date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 35, format: :short),
     doctor: Doctor.all.sample,
     patient: Patient.all.sample,
     city: City.all.sample
   )
end

5.times do |index|
  Specialty.create!(
    name: ["Family medicine", "Pediatrician", "Cardiologist", "Pulmonologist", "Dermatologist"].sample
   )
end

7.times do |index|
  TransitionSpecialtyDoctor.create!(
    doctor: Doctor.all.sample,
    specialty: Specialty.all.sample
  )
end
