require 'sinatra'


get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'felines', 'K9s', 'kittens', 'mittens']

  erb :about_me
end

get '/favorites' do
  @fav_links = [
    "https://www.reddit.com/", "https://www.buzzfeed.com", "https://www.twitter.com", "https://www.facebook.com", "https://www.reddit.com/r/aww"
  ]

  erb :favorites
end

# REDIRECTS
get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end
