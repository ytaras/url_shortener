require 'spec_helper'

describe Url do
  describe 'generator' do
    it 'generates a shorter url' do
      generated = Url.generate('http://google.com')
      generated.full.should == 'http://google.com'
      generated.short.should_not be_nil
    end
  end
end