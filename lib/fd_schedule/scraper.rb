class Scraper
  
  def self.scrape_for_events 
     
      doc = Nokogiri::HTML(open("https://www.formulad.com/schedule"))
      all_events = doc.css(".event-summary")
      all_events.each do |events|
        event = {:name => all_events.css(".name").text 
  	     :location => all_events.css(".location").text
  	     :league => all_events.css(".leagues").text
  	     :dates => all_events.css(".dates").text
        }
  	    binding.pry
      end
    end
  
  def self.scrape_for_more_info
    html = "https://www.formulad.com/schedule"
    doc = Nokogiri::HTML(open(html))
    # date = doc.css(".event-summary .dates")[0].text
    # league = doc.css(".event-summary .leagues")[0].text
    #location = doc.css(".event-summary .location")[0].text
    #url for specific details =  html.chomp"schedule" + doc.css(".event-summary a").attribute("href").value
  end 
  
end 