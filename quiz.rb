# coding: UTF-8

require 'sinatra'
require 'sinatra/reloader' if development?
require 'yaml'

questions = YAML.load_file("questions.yml")
#puts @quesetions[0]['name']

get '/' do
	erb :home
end

get '/test' do
	'Test'
end

get '/:id' do
	@id = params[:id].to_i - 1
	@desc = questions[@id]['desc']
	@list1 = questions[@id]['list1']
	@list2 = questions[@id]['list2']
	@list3 = questions[@id]['list3']
	@list4 = questions[@id]['list4']
	erb :question
end

# get '/1' do
# 	erb :'1'
# end

# get '/2' do
# 	erb :'2'
# end

# get '/3' do
# 	erb :'3'
# end