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
	'<p>3+3은 얼마인가요?</p>
	<ol>
	<li>3</li>
	<li>4</li>
	<li>5</li>
	<li>6</li>
	</ol>'
end

get '/2' do
	'<p>음악의 아버지는?</p>
	<ol>
	<li>모짜르트</li>
	<li>바하</li>
	<li>헨델</li>
	<li>비발디</li>
	</ol>'	
end