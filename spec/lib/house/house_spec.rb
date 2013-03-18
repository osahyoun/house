require 'spec_helper'

describe House::Entries do
  
  it "should list latest entries" do
    House::Entries.latest.should == [
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