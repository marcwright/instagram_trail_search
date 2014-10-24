class Page < ActiveRecord::Base

	def self.party(photo)
		photo ||= "boogermanloop"

		auth = { query: { client_id: 'c77ea186e7a4465a90729e3c4735403a' }}
		# q = movie
		# page_limit = 1
		search_url = "https://api.instagram.com/v1/tags/#{photo}/media/recent"
		
		response = HTTParty.get search_url, auth

		# auth = { query: { client_id: 'c77ea186e7a4465a90729e3c4735403a' }}
		# id = response["data"][0]["images"]["standard_resolution"]["url"]
		# # id = '770672122'
		# photo_url = "https://api.instagram.com/v1/tags/#{movie}/media/recent"

		# response = HTTParty.get photo_url, auth
		
	end
end