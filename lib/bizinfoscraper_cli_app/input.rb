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
    search = search.gsub(/[^0-9A-Za-z\s]/, '') #validate search input
    url = "https://www.yellowpages.com/search?search_terms=" + search + "&geo_location_terms=" + location
    url
  end

  def self.additional_info
    number_of_businesses = Business.all.count
    if number_of_businesses >= 10
      puts "Select '1 - 10' for additional info on searched businesses"
    else
      puts "Select '1 - #{number_of_businesses.to_s}' for additional info on searched businesses"
    end
    puts "Select 'n' for a new search"
    puts "Type 'exit' to exit program"
    selection = gets.strip

    case selection
    when "1"
      if number_of_businesses >= 1
        puts
        puts Business.all[0].name
        puts Business.all[0].address + ", " + Business.all[0].city + ", " + Business.all[0].state + " " + Business.all[0].zip
        puts Business.all[0].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "2"
      if number_of_businesses >= 2
        puts
        puts Business.all[1].name
        puts Business.all[1].address + ", " + Business.all[1].city + ", " + Business.all[1].state + " " + Business.all[1].zip
        puts Business.all[1].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "3"
      if number_of_businesses >= 3
        puts
        puts Business.all[2].name
        puts Business.all[2].address + ", " + Business.all[2].city + ", " + Business.all[2].state + " " + Business.all[2].zip
        puts Business.all[2].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "4"
      if number_of_businesses >= 4
        puts
        puts Business.all[3].name
        puts Business.all[3].address + ", " + Business.all[3].city + ", " + Business.all[3].state + " " + Business.all[3].zip
        puts Business.all[3].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "5"
      if number_of_businesses >= 5
        puts
        puts Business.all[4].name
        puts Business.all[4].address + ", " + Business.all[4].city + ", " + Business.all[4].state + " " + Business.all[4].zip
        puts Business.all[4].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "6"
      if number_of_businesses >= 6
        puts
        puts Business.all[5].name
        puts Business.all[5].address + ", " + Business.all[5].city + ", " + Business.all[5].state + " " + Business.all[5].zip
        puts Business.all[5].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "7"
      if number_of_businesses >= 7
        puts
        puts Business.all[6].name
        puts Business.all[6].address + ", " + Business.all[6].city + ", " + Business.all[6].state + " " + Business.all[6].zip
        puts Business.all[6].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "8"
      if number_of_businesses >= 8
        puts
        puts Business.all[7].name
        puts Business.all[7].address + ", " + Business.all[7].city + ", " + Business.all[7].state + " " + Business.all[7].zip
        puts Business.all[7].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "9"
      if number_of_businesses >= 9
        puts
        puts Business.all[8].name
        puts Business.all[8].address + ", " + Business.all[8].city + ", " + Business.all[8].state + " " + Business.all[8].zip
        puts Business.all[8].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "10"
      if number_of_businesses >= 10
        puts
        puts Business.all[9].name
        puts Business.all[9].address + ", " + Business.all[9].city + ", " + Business.all[9].state + " " + Business.all[9].zip
        puts Business.all[9].phone
        puts
        additional_info
      else
        puts
        puts "Enter a valid option!"
        puts
        additional_info
      end
    when "n"
      puts
      CLI.new.call
    when "exit"
      puts
      puts "Thank you for trying BizInfoScraper"
      puts "Goodbye!"
    else
      puts
      puts "Enter a valid entry!"
      puts
      additional_info
    end

  end

end
