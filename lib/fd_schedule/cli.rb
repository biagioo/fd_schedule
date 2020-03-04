class CLI 
  
  def start 
    puts "Hey there! The 2020 Forumla Drift season is starting soon!"
    schedule
    menu
    fairwell
  end
  
  def schedule 
    puts "Here is the 2020 Schedule"
    Scraper.event_names
    Scraper.more_info
  end
  
  def menu
    input = nil 
    while input != "exit"
      puts "Enter the number of the event you'd like to more information on or enter schedule to view the schedule again or type exit"
      input = gets.strip.downcase 
      case input 
      when "round 1"
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