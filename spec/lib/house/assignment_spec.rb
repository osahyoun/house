require 'spec_helper'


describe House::Assignment do
  let(:assignment_nokogiri) { Nokogiri::HTML File.open("./spec/fixtures/assignment.html") }
  let(:assignment) { House::Assignment.new(assignment_nokogiri) }

  it "should extract path" do
    assignment.path.should == "/sitters/assignment/4135"
  end

  it "should extract assingment guid" do
    assignment.guid.should == 4135
  end

  it "should extract title" do
    assignment.title.should == "Looking for Hiker and Dog Lover for Santa Fe"
  end

  it "should extract description" do
    assignment.description.should == "Looking for someone who loves walking with dogs."
  end

end