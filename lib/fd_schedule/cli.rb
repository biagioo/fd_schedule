class FdSchedule::CLI 
  
  def call 
    puts "Hey there! The 2020 Forumla Drift season is starting soon!"
    schedule
    fairwell
  end
  
  def schedule 
    puts "Here is the 2020 Schedule"
    puts "Round 1"
    puts "Round 2"
  end
  
  def menu
    puts "Enter the round you'd like to more information on or type exit"
    input = nil 
    while input != "exit"
    input = gets.strip.downcase 
    case input 
    when "round 1"
      puts "RD:1 info"
    when "round 2"
      puts "RD:2 info"
    end 
  end
  
  def fairwell 
    puts "Thanks for stopping by! Enjoy the rest of your day!"
  end 


end 