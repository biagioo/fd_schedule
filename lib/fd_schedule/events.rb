class Events
  attr_accessor :name, :date, :league, :location, :details
  @@all = []
  
  def initialize(event_hash)
    event_hash.each{ |key, value| self.send("#{key}=",value)}
    @@all << self
  end
  
  # def initialize(name, date, league, location, details) 
  #   @name = name
  #   self.send("name=",name)
  #   @date = date
  #   @league = league
  #   @location = location
  #   @details = details
  #   @@all << self
  # end 
  
  def self.all 
     @@all 
  end

  def self.create_events(events_array)
    events_array.each do |event_hash|
      Events.new(event_hash)
    end
  end
  
end 