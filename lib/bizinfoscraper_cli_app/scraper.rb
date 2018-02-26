class Scraper

  BASE_PATH = "https://www.yellowpages.com"

  def self.biznames(url)
    html = open(url)
    doc = Nokogiri::HTML(html)
    business_info = {}
    businesses = []

    doc.css("div.search-results div.result").each do |business|
      business_info = {
        :name => business.css("div.info h2 a.business-name").text,
        :yp_url => business.css("div.info h2 a").attribute("href").value
      }
      businesses << business_info
    end

    businesses

  end

  def self.additional_info(biz)
    #url = BASE_PATH + biz[:yp_url]
    #html = open(url)
    #doc = Nokogiri::HTML(html)
    #doc.css("section.primary-info div.contact").each do |address|
      binding.pry
    #end

  end

end
