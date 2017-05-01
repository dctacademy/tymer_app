require 'rubygems'
require 'nokogiri'
require 'httparty'

page = Nokogiri::HTML(HTTParty.get("https://www.urbanpro.com/need/search?topicId=258&distance=2&city=Bangalore&max=500&refineSearch=true&regularNeed=on&sortBy=RELEVANCE&featuredNeed=on&filterBy=LAST30DAYS&page=1"))   
puts page.class
enquiries = page.css('div.enquiry-card')
puts "Total Enquiries : #{enquiries.length}"

puts enquiries[0].css('h3').text

enquiries.each do |enquiry| 
#	puts enquiry.css('p.ec-category').text.split(" ")[1]
end 