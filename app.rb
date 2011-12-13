require 'bundler/setup'
require 'sinatra'

set :root, File.dirname(__FILE__)
set :public_folder, File.join(settings.root, 'www')

get '/' do
  "WebRocket Specification RFC"
end

get '/*.html' do |path|
  File.read(File.join(settings.public_folder, path + ".html"))
end
