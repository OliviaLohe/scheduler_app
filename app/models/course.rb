class Course < ApplicationRecord
	has_and_belongs_to_many :trainers
	has_many :event_courses
	has_many :events, through: :event_courses
	has_many :clients, through: :events
end
