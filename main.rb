require 'mongo'
require 'sinatra'

set :bind, '0.0.0.0'
set :server, :puma

mongodb = nil
before do
	mongodb = Mongo::Client.new(['127.0.0.1:27017'], :database => 'lurkify')
end


get '/' do
	out = ''
	mongodb[:parties].find.each do |party|
		out += party.to_s + "\n"
	end
	out
end
