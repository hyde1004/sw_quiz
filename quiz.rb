# coding: UTF-8

require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	'Welcome'
end

get '/test' do
	'Test'
end

# get '/:id' do
# 	erb :question
# end

get '/1' do
	erb :'1'
end

get '/2' do
	erb :'2'
end

get '/3' do
	erb :'3'
end