class Course < ApplicationRecord
	has_many :event_courses
	has_many :events, through: :event_courses, dependent: :destroy
	has_many :course_trainers
	has_many :trainers, through: :course_trainers, dependent: :destroy
	has_many :clients, through: :events
end
