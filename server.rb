require 'sinatra'

get '/' do
   File.read(File.join('hello.txt'))
end
