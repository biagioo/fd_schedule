class Scraper
  
  def self.event_names 
    doc = Nokogiri::HTML(open("https://www.formulad.com/schedule"))
    event_names = doc.css(".event-summary .name") # 9 events
    event_names.each.with_index{ |name, i| puts "#{i+1} --#{name.text}"}
    end
  
  def self.more_info
    html = "https://www.formulad.com/schedule"
    doc = Nokogiri::HTML(open(html))
    events = Array.new
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
    binding.pry
  end 
  
end 