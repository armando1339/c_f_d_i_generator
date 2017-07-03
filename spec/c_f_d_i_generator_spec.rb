require "spec_helper"

describe Hello do 
  context "first test" do
    it "is a test" do 
      @hello = Hello.new
      expect(@hello.pow(3, 2)).to eql(9)
    end
  end
end
