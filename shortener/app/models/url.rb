class Url < ActiveRecord::Base

  validates_presence_of :full
  validates_length_of :short, is: 6
  scope :by_short, ->(short) { where(short: short) }

  def self.generate(url)
    create!(full: url, short: SecureRandom.hex(3))
  end
end
