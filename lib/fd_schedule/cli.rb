class FdSchedule::CLI 
  
  def call 
    puts "Hey there! The 2020 Forumla Drift season is starting soon!"
    schedule
    menu
    fairwell
  end
  
  def schedule 
    puts "Here is the 2020 Schedule"
    puts "Round 1"
    puts "Round 2"
  end
  
  def menu
    input = nil 
    while input != "exit"
      puts "Enter the round you'd like to more information on or enter schedule to view the schedule again or type exit"
      input = gets.strip.downcase 
      case input 
      when "round 1"
        puts "RD:1 info"
      when "round 2"
        puts "RD:2 info"
      when "schedule"
        schedule
      else 
        "hmm not sure what you mean, try typing schedule, the round you want more information on or exit"
      end 
    end 
  end
  
  def fairwell 
    puts "Thanks for stopping by! Enjoy the rest of your day!"
  end 


end 