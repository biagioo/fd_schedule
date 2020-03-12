class Scraper
  
  def self.scrape_info
    events = []
    html = "https://www.formulad.com/schedule"
    doc = Nokogiri::HTML(open(html))
    events_sum = doc.css("div.card.card-event .event-summary")
    events_sum.each do |event_sum|
      event = {
        :name => event_sum.css(".name").text,
        :date => event_sum.css(".dates").text,
        :league => event_sum.css(".leagues").text, 
        :location => event_sum.css(".location").text,
        :details => html.gsub("/schedule","") + event_sum.css("a").attribute("href").value
      }
      events << event
    end
    # events.each do |event| 
    #   Events.new(*event.values)
    # end
    Events.create_events(events)
  end
  
end 