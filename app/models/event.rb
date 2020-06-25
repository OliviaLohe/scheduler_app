class Event < ApplicationRecord
	belongs_to :client
	belongs_to :trainer
end
