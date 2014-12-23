require 'rails_helper'

RSpec.describe Event, :type => :model do

  it "should be valid" do
    # let(:valid_attributes){ { :name => "Train#123"} }
    expect(Event.new).to be_valid
    # expect(Event.new(valid_attributes)).to_not be_valid
  end
end
