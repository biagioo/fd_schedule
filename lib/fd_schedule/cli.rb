class CLI 
  
  def start 
    Scraper.scrape_info
    puts "Hey there! The 2020 Forumla Drift season is starting soon!"
    schedule
    menu
    fairwell
  end
  
  def get_events
     Events.all 
  end
  
  def event_info 
    get_events.find do |event| 
      puts "#{event.name} - #{event.league} - #{event.date} - #{event.location} - #{event.details}"
    end 
  end 
  
  def schedule 
    puts "Here is the 2020 Schedule"
    get_events.each.with_index do |event, i| 
      puts "#{i+1} --  #{event.name}"
    end 
  end
  
  def menu
    input = nil 
    while input != "exit"
      puts "Enter the number of the event you'd like to learn more about, enter schedule to view the schedule again or type exit"
      input = gets.strip.downcase 
      case input 
      when ""
        puts "RD:1 info"
      when "round 2"
        puts "RD:2 info"
      when "schedule"
        schedule
      else 
        puts "hmm, not sure what you mean. Try entering schedule, the round you want more information on or exit."
      end 
    end 
  end
  
  def fairwell 
    puts "Thanks for stopping by! Enjoy the rest of your day!"
  end 


end 