require 'csv'
class Alumnu < ActiveRecord::Base
	searchkick

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Alumnu.create! row.to_hash
		
		end
	end
end