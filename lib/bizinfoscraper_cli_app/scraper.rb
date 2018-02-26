class Scraper

  BASE_PATH = "https://www.yellowpages.com"

  def self.bizinfo(url)
    html = open(url)
    doc = Nokogiri::HTML(html)
    business_info = {}
    businesses = []

    doc.css("div.search-results.organic div.result").each do |business|
      business_info = {
        :name => business.css("div.srp-listing div.v-card div.info h2 a.business-name").text,
        :yp_url => business.css("div.srp-listing div.v-card div.info h2 a").attribute("href").value
      }
      businesses << business_info

    end

    businesses = additional_info(businesses)

    businesses

  end

  def self.additional_info(biz_hash)
    updated_businesses = []

    biz_hash.each do |business_hash|
      url = BASE_PATH + business_hash[:yp_url]
      html = open(url)
      doc = Nokogiri::HTML(html)
      n = 0

      doc.css("article.business-card.clearfix.non-paid-listing section.primary-info div.contact p.address span").each do |biz_info|

        if n == 0
          business_hash[:address] = biz_info.text
        elsif n == 1
          business_hash[:city] = biz_info.text
        elsif n == 2
          business_hash[:state] = biz_info.text
        else
          business_hash[:zip] = biz_info.text
        end #end of if/else
        n += 1

      end #end of doc.css
      updated_businesses << business_hash

    end #end of biz_hash.each
    updated_businesses

  end #end of self.additional_info

end #end of scraper class
