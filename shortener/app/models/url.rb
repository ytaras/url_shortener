class Url < ActiveRecord::Base

  validates_presence_of :short, :full
  scope :by_short, ->(short) { where(short: short) }

  def self.generate(url)
    create!(full: url, short: SecureRandom.hex(5))
  end
end
