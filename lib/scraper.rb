require 'pry'
require 'open-uri'
 
    
    
     
    def scraper
        url = "https://capcomprotour.com/standings"
        unparsed_page = HTTParty.get(url)
        parsed_page = Nokogiri::HTML(unparsed_page)
        player_standings =parsed_page.css('div.player-details.clearfix')
        player_standings.each do|ranks|
          player_info ={ Name_location:parsed_page.css('p.details').text
                        Gamer_tag_points:parsed_page.css('h3').text
                        Players_url:parsed_page.css("a.player-link").to_a[0].attributes["href"].value }
                    byebug
         
    end    