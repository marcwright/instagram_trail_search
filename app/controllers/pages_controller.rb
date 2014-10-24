class PagesController < ApplicationController
 
  def index
    # @photo = HTTParty.get "https://api.instagram.com/v1/tags/abramsfalls/media/recent?client_id=c77ea186e7a4465a90729e3c4735403a"
    @photo = Page.party(params[:photo])
  end
end
