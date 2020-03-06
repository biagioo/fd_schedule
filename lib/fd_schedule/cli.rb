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
   while input != "exit"
      puts "Enter the number of the event you'd like to learn more about, enter schedule to view the schedule again or type exit:"
    choice_array = (0..8).to_a #users only have the choice of 9 events, their choice -1 is the index where that event is stored in the array.
    input = gets.strip.downcase 
    index = input.to_i - 1
      if input.to_i > 0 && choice_array.include?(index)
        get_events[index].tap do |event| 
         puts "Title: #{event.name}"
         puts "League: #{event.league}" 
         puts "Date: #{event.date}"
         puts "Location: #{event.location}"
         puts "For more details: #{event.details}"
         puts " "
         end
      elsif input == "schedule"
        schedule
      elsif input == "exit"
        fairwell
      else
        puts "Invalid input."
       end
    end 
  end
  
  def fairwell 
    puts "Thanks for stopping by! Enjoy the rest of your day!"
  end 

end 