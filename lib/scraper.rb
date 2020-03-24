require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
   scraped_students = []
   html = Nokogiri::HTML(open(index_url))
   html.css(".student-card").collect do |student|
     hash = {
       name: student.css("h4.student-name").text,
       location: student.css("")
     }
    
  end
  

  def self.scrape_profile_page(profile_url)
    
  end

end

