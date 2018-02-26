class Input

  def self.new_search
    puts "NEW SEARCH!"
    puts "Enter your location"
    location = gets.strip
    location = location.gsub(" ", "+")
    puts
    puts "Enter your search term"
    search = gets.strip
    search = search.gsub(" ", "+")
    url = "https://www.yellowpages.com/search?search_terms=" + search + "&geo_location_terms=" + location
    url
  end

end
