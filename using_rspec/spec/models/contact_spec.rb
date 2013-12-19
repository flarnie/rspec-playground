require 'spec_helper'

describe Contact do
  let(:invalid_contact_first_only) { Contact.new(:first_name => "Jane") }
  let(:invalid_contact_last_only) { Contact.new(:last_name => "Doe") }
  let(:valid_contact) { Contact.new(:first_name => "Jane",
    :last_name => "Doe" ) }
  it "is invalid without a first name" do
    invalid_contact_first_only.should_not be_valid
  end
  it "is invalid without a last name" do
    invalid_contact_last_only.should_not be_valid
  end
  it "returns full name" do
    valid_contact.full_name.should == "Jane Doe"
  end
end
