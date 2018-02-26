class Input

  def self.new_search
    puts "NEW SEARCH!"
    puts "Enter your zip code:"
    location = gets.strip

    if !location.match(/^[0-9]{5}(?:-[0-9]{4})?$/) #verify a valid zip code
      puts
      puts "Please enter a valid zip code!"
      puts
      new_search
    end
    puts
    puts "Enter your search term:"
    search = gets.strip
    search = search.gsub(" ", "+")
    url = "https://www.yellowpages.com/search?search_terms=" + search + "&geo_location_terms=" + location
    url
  end

  def self.additional_info
    puts "Select '1 - 10' for additional info on searched businesses"
    puts "Select 'a' for a new search"
    puts "Select 'b' to exit program"
    selection = gets.strip

    case selection
    when "1"
      puts
      puts Business.all[0].name
      puts Business.all[0].address + Business.all[0].city + Business.all[0].state + Business.all[0].zip
      puts
      additional_info
    when "2"
      puts
      puts Business.all[1].name
      puts Business.all[1].address + Business.all[1].city + Business.all[1].state + Business.all[1].zip
      puts
      additional_info
    when "3"
      puts
      puts Business.all[2].name
      puts Business.all[2].address + Business.all[2].city + Business.all[2].state + Business.all[2].zip
      puts
      additional_info
    when "4"
      puts
      puts Business.all[3].name
      puts Business.all[3].address + Business.all[3].city + Business.all[3].state + Business.all[3].zip
      puts
      additional_info
    when "5"
      puts
      puts Business.all[4].name
      puts Business.all[4].address + Business.all[4].city + Business.all[4].state + Business.all[4].zip
      puts
      additional_info
    when "6"
      puts
      puts Business.all[5].name
      puts Business.all[5].address + Business.all[5].city + Business.all[5].state + Business.all[5].zip
      puts
      additional_info
    when "7"
      puts
      puts Business.all[6].name
      puts Business.all[6].address + Business.all[6].city + Business.all[6].state + Business.all[6].zip
      puts
      additional_info
    when "8"
      puts
      puts Business.all[7].name
      puts Business.all[7].address + Business.all[7].city + Business.all[7].state + Business.all[7].zip
      puts
      additional_info
    when "9"
      puts
      puts Business.all[8].name
      puts Business.all[8].address + Business.all[8].city + Business.all[8].state + Business.all[8].zip
      puts
      additional_info
    when "10"
      puts
      puts Business.all[9].name
      puts Business.all[9].address + Business.all[9].city + Business.all[9].state + Business.all[9].zip
      puts
      additional_info
    when "a"
      puts
      CLI.new.call
    when "b"
      puts
      puts "Thank you for trying BizInfoScraper"
      puts "Goodbye!"
    end

  end

end
