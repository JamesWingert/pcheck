require 'checker'

RSpec.describe 'Checker' do
  before(:each) do
    @sut = Checker.new
  end

  context "User Passwords" do
    it "should not allow passwords that are < 7 characters" do
      expect(@sut.check("abc")).to be false
    end

    it "should not allow passwords that don't contain at least 1 letter" do
      expect(@sut.check("12345678910")).to be false
    end

    it "should not allow passwords that don't contain at least 1 number" do
      expect(@sut.check("abcdefghijk")).to be false
    end
  end

  context "Admin Passwords" do
    it "should not allow passwords that are < 10 characters" do
      expect(@sut.check("abc")).to be false
    end
    it "should not allow passwords that don't contain a special character" do
      expect(@sut.check("a2b3c4d5e6f8ghijk")).to be false
    end
  end
end