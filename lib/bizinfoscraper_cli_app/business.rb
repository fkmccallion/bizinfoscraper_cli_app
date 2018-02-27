class Business

  attr_accessor :name, :yp_url, :address, :city, :state, :zip

  @@all = []

  def initialize(business_hash)
    business_hash.each {|key, value| self.send(("#{key}="), value.strip.chomp(','))}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_biz_from_hash_array(biz_hash_array)
    biz_hash_array.each {|biz_hash| Business.new(biz_hash)}
  end

end
