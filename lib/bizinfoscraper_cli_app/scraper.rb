require 'open-uri'

class Scraper

  def self.return_bizobjects(url)
    url
    html = open(url)
    doc = Nokogiri::HTML(html)
    binding.pry
  end

end
