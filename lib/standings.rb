

class Standings::Scraper
    attr_accessor :name, :location, :rank
    
    @@all = []

    def initalize(name, location, rank)
        @name = name
        @location = location
        @rank = rank 
        @@all << self 
    end 

    def self 
        @@all 
    end 

en