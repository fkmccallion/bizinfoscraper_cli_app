# CLI Controller
class CLI

  def call
    puts "Welcome to Bizinfoscraper!"
    puts "Paste your URL:"
    url = gets.strip
    bizhasharray = Scraper.bizinfo(url)
    Business.create_biz_from_hash_array(bizhasharray)
    puts "The following businesses meet your criteria:"

  end


end
