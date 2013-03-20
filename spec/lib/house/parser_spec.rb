require 'spec_helper'

describe House::Parser do
  let(:feed) { Nokogiri::HTML File.open("./spec/fixtures/sample.html") }

  it "should list latest entries" do
    House::Assignments.latest(feed).should == [
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