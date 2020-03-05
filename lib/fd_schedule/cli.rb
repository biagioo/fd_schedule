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
      puts "#{i+1} -- #{event.name}"
    end
  end
  
  def menu
    input = nil 
    while input != "exit"
      puts "Enter the number of the event you'd like to learn more about, enter schedule to view the schedule again or type exit"
      input = gets.strip 
      case input 
      when "1"
        get_events[0].tap do |event| 
          puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
        end
      when "2"
        get_events[1].tap do |event| 
          puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
        end
      when "3"
        get_events[2].tap do |event| 
          puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
        end
      when "4"
        get_events[3].tap do |event| 
          puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
        end
      when "5"
        get_events[4].tap do |event| 
          puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
        end
      when "6"
        get_events[5].tap do |event| 
          puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
        end
      when "7"
        get_events[6].tap do |event| 
          puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
        end
      when "8"
        get_events[7].tap do |event| 
          puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
        end
      when "9"
        get_events[8].tap do |event| 
          puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
        end
      when "schedule"
        schedule
      else 
        puts "hmm, not sure what you mean."
      end 
    end 
  end
  
  def fairwell 
    puts "Thanks for stopping by! Enjoy the rest of your day!"
  end 


end 