require 'open-uri'
require 'pry'


class Scraper

  def self.scrape_index_page(index_url)
   scraped_students = []
   html = Nokogiri::HTML(open(index_url))
   html.css(".student-card").collect do |student|
     hash = {
       name: student.css("h4.student-name").text,
       location: student.css("p.student-name").text,
       profile_url: "http://students.learn.co/students" + student.css("a").attribute("href")
     }
    scraped_students << hash
  end
  scraped_students
  end
  

  def self.scrape_profile_page(profile_url)
    
  end

end

