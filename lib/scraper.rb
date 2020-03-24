require 'open-uri'
require 'pry'


class Scraper

 def self.scrape_index_page(index_url)
    page = Nokogiri::HTML(open(index_url))
    students = []

    page.css("div.student-card").each do |student|
      name = student.css(".student-name").text
      location = student.css(".student-location").text
      profile_url = student.css("a").attribute("href").value
      scraped_students = {:name => name,
                :location => location,
                :profile_url => profile_url}
      students << scraped_students
      end
    students
   end
  

  def self.scrape_profile_page(profile_url)
    page = Nokogiri::HTML(open(profile_url))
    scraped_student = {}
    
    container = page.css(".social-icon-container a")

    
  end

end

