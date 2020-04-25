require 'pry'
require 'open-uri'
 
    
    
     
    class Scraper
     
      def self.get_page
          doc = Nokogiri::HTML(open("https://capcomprotour.com/standings"))
          parsed_page = Nokogiri::HTML("https://capcomprotour.com/standings")
          binding.pry
      end

     def self.get_standings
        res = HTTParty.get(STANDINGS_URL)
     end   

  end 
 




