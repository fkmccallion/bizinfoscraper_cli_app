class Scraper

  def self.return_biznames(url)
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

end
