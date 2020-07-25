class Client < ApplicationRecord
	require 'csv'

	has_many :events
	has_many :courses, through: :events

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Client.create({
				name: row[2],
				primary_contact: row[10],
				phone: row[11],
				email: row[16]
			})
		end
	end
end
