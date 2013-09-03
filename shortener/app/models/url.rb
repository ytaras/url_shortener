class Url < ActiveRecord::Base
  def self.generate(url)
    create(full: url, short: SecureRandom.hex(5))
  end
end
