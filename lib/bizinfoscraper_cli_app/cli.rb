# CLI Controller
class CLI

  def call
    puts "Paste URL:"
    url = gets.strip
    bizinfo = Scraper.return_bizobjects(url)
    #binding.pry
  end


end
