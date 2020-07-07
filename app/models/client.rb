class Client < ApplicationRecord
	has_many :events
	has_many :courses, through: :events
end
