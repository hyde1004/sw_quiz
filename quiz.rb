# coding: UTF-8

require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	'Welcome'
end

get '/test' do
	'Test'
end