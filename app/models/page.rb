class Page < ActiveRecord::Base

	def self.party(photo)
		photo ||= "boogermanloop"

		auth = { query: { client_id: 'c77ea186e7a4465a90729e3c4735403a' }}
				
		search_url = "https://api.instagram.com/v1/tags/#{photo.delete(" ")}/media/recent"
		
		response = HTTParty.get search_url, auth

	end
end