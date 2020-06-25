class Trainer < ApplicationRecord
	has_many :events, dependent: :destroy
end
