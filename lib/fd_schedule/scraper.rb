class Scraper
  
  def self.scrape_for_events 
    events = []
    doc = Nokogiri::HTML(open("https://www.formulad.com/schedule"))
    events << doc.css(".event-summary .name").text
    binding.pry
    events.collect { |name| puts name.split}
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