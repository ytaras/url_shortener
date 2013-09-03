class Url < ActiveRecord::Base
  validates_presence_of :short, :full

  def self.generate(url)
    create!(full: url, short: SecureRandom.hex(5))
  end
end
