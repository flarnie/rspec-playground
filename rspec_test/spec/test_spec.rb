require 'rspec'
require 'test'

describe Test do
  subject (:array) { [
    Test.new("red", 1),
    Test.new("blue", 2),
    Test.new("green", 3)] }
  let! (:thing) { array[0].dup }
  before(:each) {
    array[0] = Test.new("purple", 42)
    puts "array is #{array}"
    puts "thing is #{thing}"
  }
  
  it "should render the things we expect" do
    thing.num.should == 1
    array[0].num.should == 42
  end
end