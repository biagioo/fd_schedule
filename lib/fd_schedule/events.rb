class Events
  attr_accessor :name, :date, :league, :location, :details
  @@all = []
  
  def initialize(name, date, league, location, details) 
    @name = name
    @date = date
    @league = league
    @location = location
    @details = details
    @@all << self
  end 
  
  def self.all 
     @@all 
  end
  
  def self.event_names 
    @@all.each.with_index do |event, i| 
      puts "#{i+1} --  #{event.name}"
    end 
  end 
  
  def self.event_info 
    
  end 
  
end 