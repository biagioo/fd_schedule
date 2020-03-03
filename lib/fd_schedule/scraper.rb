class FdSchedule::Scraper
  
  def self.scrape_schedule_page 
    doc = Nokogiri::HTML(open("https://formulad.com/schedule"))
    binding.pry
  end 
  
end 