require 'spec_helper'

describe House::Parser do
  let(:feed) { Nokogiri::HTML File.open("./spec/fixtures/sample.html") }

  it "should list latest entries" do
    assignments = House::Assignments.latest(feed)
    assignments.length.should == 3

    assignments.first.should == {
      title: "One month this summer near S.F.", 
      url: "http://mindmyhouse.com/sitters/assignment/1", 
      location: "United States, Mill Valley", 
      description: "Responsible, mature non-smoking single person or couple."
    }
  end

end