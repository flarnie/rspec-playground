require 'spec_helper'

describe Puppy do
  it "has a valid factory" do
    FactoryGirl.create(:puppy).should be_valid
  end
  
  it "can be created in large groups" do
    bucket_of_puppies = FactoryGirl.create_list(:puppy, 100)
    bucket_of_puppies.length.should == 100
  end
end
