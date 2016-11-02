require 'sinatra'
require 'httparty'
require 'nokogiri'

url = "http://miami.craigslist.org/search/sof"
response = HTTParty.get(url)

dom = Nokogiri::HTML(response.body)
job_title_links = dom.css('a.hdrlnk')

job_titles = job_title_links.map(&:text)
# pp job_titles

get '/' do
  job_titles
end
