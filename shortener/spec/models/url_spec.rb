require 'spec_helper'

describe Url do
  describe 'generator' do
    it 'generates a shorter url' do
      generated = Url.generate('http://google.com')
      generated.full.should == 'http://google.com'
      generated.short.should_not be_nil
      # TODO Check length is 5
    end
  end
  describe 'validators' do
    it { should validate_presence_of :full }
    it { should validate_presence_of :short }
    # TODO Validate length of :short
  end
end
