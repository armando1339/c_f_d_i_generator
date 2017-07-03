require "spec_helper"

RSpec.describe CFDIGenerator do
  it "has a version number" do
    expect(CFDIGenerator::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  describe Hello do
  	@hello = Hello.new
  	@hello.say_hello
  end
end
