require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    scraped_students = []
    html = open(index_url)
    index = Nokogiri::HTML(open)
  end
  

  def self.scrape_profile_page(profile_url)
    
  end

end

