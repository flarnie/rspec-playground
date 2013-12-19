require 'spec_helper'

describe Cat do
  it "has a valid factory" do
    FactoryGirl.create(:cat).should be_valid
  end
  
  it "can be a kitten" do
    FactoryGirl.create(:kitten).age.should == 0
  end
  
  it "must have a name" do
    FactoryGirl.build(:cat, name: nil).should_not be_valid
  end
  
  it "may wear a hat" do
    FactoryGirl.build(:cat_with_hat).hat.should be_instance_of(Hat)
  end
  
end
