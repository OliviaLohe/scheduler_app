class Client < ApplicationRecord
	require 'csv'

	# A client can have many events scheduled, and can be certified in several courses
	# through these events
	has_many :events
	has_many :courses, through: :events

	# This import function first clears the Client table of all records, then populates the table
	# with data from a user-uploaded CSV file. the columns corresponding to each attribute
	# are hard-coded according to the sample Client CSV file provided by Dan. Thi smay need to be updated
	# if the format of client data changes.
	def self.import(file)
		Client.delete_all

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
