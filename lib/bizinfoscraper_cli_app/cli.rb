# CLI Controller
class CLI

  def call
    puts "Welcome to Bizinfoscraper!"
    puts "Paste your URL:"
    url = gets.strip
    biznames = Scraper.biznames(url)
    Business.create_from_biznames(biznames)
  end


end
