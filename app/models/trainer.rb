class Trainer < ApplicationRecord
	require 'csv'

	has_many :course_trainers
	has_many :courses, through: :course_trainers


	# this function may be useful in the future to add trainer data to the database
	# via a CSV file upload.
	# def self.import(file)
	#	CSV.foreach(file.path, headers: true) do |row|
			#add trainer if not already in DB
	#		Trainer.find_or_create_by(name: row[0])
			#add new association btwn each trainer and course
	#		CourseTrainer.create({
	#			course_id: Course.where(name: row[1]),
	#			trainer_id: Trainer.where(name: row[0])
	#		})
	#	end
	# end
end
