# encoding: utf-8
require 'sinatra'
require 'sinatra/json'
require 'json'

class Service
  get '/' do
    content_type :json
    json result: {message: "A simple HTTP Service, using Sinatra"}
  end

  get '/api/v1/version' do
    content_type :json
    json result: {version: "1.0.0"}
  end

  get '/api/v1/customer/:id' do
    content_type :json
    json result: {
		   customer:   "LOCAWEB - IDC",
		   customer_id: params[:id],
		   created_at: "2012-03-06",
		   updated_at: "2012-03-06",
		   status:     "activing"
		 }
  end
  post '/api/v1/customers' do
    begin
      content_type :json
      puts data = JSON.parse(request.body.read)
      json result: { message: "Customer Created"}
    rescue
      status 500
      json result: {message: "error"}
    end
  end
  delete '/api/v1/customer/:id' do
    content_type :json
    status 404 if params[:id] == "10"
    json result: { message: "Customer #{params[:id]} deleted"}
  end

  put '/api/v1/customer/:id' do
    content_type :json
    json result: { message: "Customer #{params[:id]} Updated to #{request.body.read}"}
  end

  not_found do
    json result: {message: "404 trouxa"}
  end

end
