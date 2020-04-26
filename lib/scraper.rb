require 'pry'
require 'byebug'
require "httparty"
    
# class SF
#     attr_accessor :url 

#     @@all=[]

#     def initialize(url)
#             @url = nil
#             save
#     end 
        
#     def save
#      @@all << url
#     end 
        
#         def self.all
#             @@all
#         end 

#         def self.destory_all
#             @@all.clear
#         end 

       def scraper
        url = "https://capcomprotour.com/standings"
        unparsed_page = HTTParty.get(url)
        parsed_page = Nokogiri::HTML(unparsed_page)
        player_standings = parsed_page.css('div.standings-container')
        sf_array = []
        player_standings.each do|rank|       
            player_info = { name_location: rank.css('p.details').text.split(/(?=[A-Z])/).join(" "),
                            game_tag_points: rank.css('h3').text.split(/(?=[A-Z])/).join(" "),                       
                            players_url: rank.css("a").attr("href").value
                        }
                           sf_array << player_info 
                           sf_array  
                binding.pry     
        end 
         
    end   

# end 
    


    