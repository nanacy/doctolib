require 'faker'

nb_docteur = 10
puts "-- Création de #{nb_docteur} docteurs --"
nb_docteur.times do |i|
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Job.field, postal_code: Faker::Number.number(5))
end

nb_patient = 10
puts "-- Création de #{nb_patient} patients --"
nb_patient.times do |i|
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

nb_rdv = 10
puts "-- Création de #{nb_rdv} rdv --"
nb_rdv.times do |i|
	Appointment.create(date: Faker::Time.between(DateTime.now - 1, DateTime.now), doctor_id: rand(1..10), patient_id: rand(1..10) )
end