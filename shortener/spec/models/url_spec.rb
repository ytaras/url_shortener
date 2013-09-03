require 'spec_helper'

describe Url do
  describe 'generator' do
    it 'generates a shorter url' do
      generated = Url.generate('http://google.com')
      generated.full.should == 'http://google.com'
      generated.short.should_not be_nil
      generated.short.length.should == 6 # I assume that's a
      # reasonable tradeoff with reqs
    end
  end
  describe 'scopes' do
    it 'should find by short url' do
      short = Url.generate('http://google.com').short
      Url.by_short(short).first.full.should == 'http://google.com'
    end
  end
  describe 'validators' do
    it { should validate_presence_of :full }
    it { should ensure_length_of(:short).is_equal_to(6) }
    # TODO Validate length of :short
  end
end
