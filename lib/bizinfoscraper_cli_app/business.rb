class Business

  attr_accessor :name, :yp_url

  @@all = []

  def initialize(business_hash)
    business_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.all
    @@all
  end


end
