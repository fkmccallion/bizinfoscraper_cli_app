# CLI Controller
class CLI

  def call
    puts "Welcome to Bizinfoscraper!"
    puts "Paste your URL:"
    url = gets.strip
    biznames = Scraper.bizinfo(url)

  end


end
