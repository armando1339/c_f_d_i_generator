require "spec_helper"

RSpec.describe CFDIGenerator do
  it "has a version number" do
    expect(CFDIGenerator::VERSION).not_to be nil
  end

  describe Hello do 
	  context "first test" do
	    it "is a test" do 
	      @hello = Hello.new
	      expect(@hello.pow(3, 2)).to eql(9)
	    end
	  end
	end
end
