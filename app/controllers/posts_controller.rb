require 'open-uri'
require 'json'

class PostsController < ApplicationController
  def index    
    url = "https://graph.facebook.com/me/home?access_token=#{my_access_token}&limit=200"
    
    response = open(url).read
    
    json_response = JSON.parse(response)
    
    @posts = json_response["data"]
    
    @posts_with_videos = @posts.select { |post| post["type"] == "video" && post["link"].present? }
  end
end