# CLI Controller
class CLI

  def call
    puts "Welcome to Bizinfoscraper!"
    puts "Paste your URL:"
    url = gets.strip
    biznames = Scraper.return_biznames(url)
    Business.array_of_biznames(biznames)
  end


end
