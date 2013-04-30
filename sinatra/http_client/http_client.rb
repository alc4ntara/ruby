require 'sinatra'
require 'sinatra/json'
require 'json'
require 'net/http'

class HttpClient

  get '/' do
  	uri =  URI('http://localhost:3000')
  	@resposta = Net::HTTP.get(uri)
    erb :index
  end
  
  get '/version' do
  	uri =  URI('http://localhost:3000/api/v1/version')
  	@resposta = Net::HTTP.get(uri)
    erb :index
  end

  get '/customer/:id' do
  	uri =  URI("http://localhost:3000/api/v1/customer/#{params[:id]}")
  	@resposta = Net::HTTP.get(uri)
    erb :index
  end

  get '/customers' do

  	uri =  URI.parse("http://localhost:3000/api/v1/customers")
  	#request = Net::HTTP::Post.new(uri.path)
  	#request.body = JSON.parse('{"someKey":"someValue"}')
  	#@resposta = Net::HTTP.start(uri.host, uri.port) do |http|
  	#	http.request(request)
  	#end
  	@resposta = Net::HTTP.post_form(uri, 'teste' => ["{'teste': 'blah'}"])
    erb :index
  end

end
