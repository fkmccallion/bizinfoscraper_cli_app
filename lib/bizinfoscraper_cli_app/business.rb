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

  def self.array_of_biznames(business_hashes)
    business_hashes.each do |business_hash|
      Business.new(business_hash)
    end
  end

end
