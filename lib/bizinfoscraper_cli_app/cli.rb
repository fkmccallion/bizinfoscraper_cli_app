# CLI Controller
class BizinfoscraperCliApp::CLI

  def call
    puts "Paste URL:"
    url = gets.strip
    info(url)
  end

end
