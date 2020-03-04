class Scraper
  
  def self.event_names 
    doc = Nokogiri::HTML(open("https://www.formulad.com/schedule"))
    event_names = doc.css(".event-summary .name") # 9 events
    event_names.each.with_index{ |name, i| puts "#{i+1} --#{name.text}"}
    end
  
  def self.more_info
    html = "https://www.formulad.com/schedule"
    doc = Nokogiri::HTML(open(html))
    card_events = doc.css("div.card.card-event .event-summary")
    card_events.each do |events|
      event = {
        :name => events.css(".name").text,
        :date => events.css(".dates").text,
        :league => events.css(".leagues").text, 
        :location => events.css(".location").text
      }
      binding.pry
    end
    
    # date = doc.css(".event-summary .dates")[0].text
    # league = doc.css(".event-summary .leagues")[0].text
    #location = doc.css(".event-summary .location")[0].text
    #url for specific details =  html.chomp"schedule" + doc.css(".event-summary a").attribute("href").value
  end 
  
end 