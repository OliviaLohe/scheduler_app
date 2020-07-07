class Event < ApplicationRecord
	has_many :event_courses
	has_many :courses, through: :event_courses

end
