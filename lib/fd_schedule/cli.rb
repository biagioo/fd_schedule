class CLI 
  
  def start 
    Scraper.scrape_info
    puts "Hey there! The 2020 Forumla Drift season is starting soon!"
    schedule
  end
  
  def get_events
     Events.all 
  end
  
  def schedule 
    puts "Here is the 2020 Schedule"
    
    get_events.each.with_index do |event, i| 
      puts "#{i+1} -- #{event.name}"
    end
    menu
  end
  
  def menu
    input = nil 
    until input == "exit"
      puts "Enter the number of the event you'd like to learn more about, enter schedule to view the schedule again or type exit"
      choice_array = (0..8).to_a
      input = gets.strip.downcase 
      index = input.to_i - 1
      if choice_array.include?(index)
        get_events[index].tap do |event| 
         puts "Name: #{event.name} League: #{event.league} Date: #{event.date} Location: #{event.location} For more details: #{event.details}"
         end
      # elsif input == "exit"
      #   fairwell
      elsif input == "schedule"
        schedule
      else
        puts "hmm, I don’t think that was one of the options"
       end
    end 
  end
  
  def fairwell 
    puts "Thanks for stopping by! Enjoy the rest of your day!"
  end 


end 