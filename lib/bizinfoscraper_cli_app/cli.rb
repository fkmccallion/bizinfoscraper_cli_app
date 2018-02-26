# CLI Controller
class CLI

  def call
    puts "Welcome to BizInfoScraper!"
    url = Input.new_search

    bizhasharray = Scraper.bizinfo(url)
    Business.create_biz_from_hash_array(bizhasharray)

    puts
    puts "The following businesses meet your criteria:"
    puts

    n = 1
    Business.all.each do |biz|
      if n < 11
        puts n.to_s + ". " + biz.name
      end
      n += 1
    end

    puts

    Input.additional_info





    #binding.pry
  end


end
