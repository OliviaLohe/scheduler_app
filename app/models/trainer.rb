class Trainer < ApplicationRecord
	has_many :events, dependent: :destroy
	has_and_belongs_to_many :courses
end
