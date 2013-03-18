require 'spec_helper'

module House
  class Parser
    def initialize(feed)
      @feed = feed
    end

    def entries
      []
    end
  end
end


describe House::Parser do
  let(:feed) { Nokogiri::HTML File.open("./spec/fixtures/sample.html") }

  it "should list latest entries" do
    House::Parser.new(feed).entries.should == [
      [
        "http://mindemyhouse.com/foobar.html",
        "Lovely House Sit in France"
      ], 
      [
        "http://mindemyhouse.com/foobar.html",
        "Lovely House Sit in France"
      ]
    ]
  end

end