require 'rails_helper'



RSpec.describe Train, :type => :model do

  describe ".display_name" do
    it "should upcase train name" do
      train = Train.new( :name => 'foobar' )
      expect(train.display_name).to eq("FOOBAR")
    end

    it "should correct ihover to ihower" do
      train = Train.new( :name => 'ihover' )
      expect(train.display_name).to eq("iHOWER")
    end

  end

  it "should be valid if it has name" do
    train = Train.new(:name => 'QQ')
    expect(train).to be_valid
  end

  it "should not be valid if it has no name" do
    train = Train.new
    expect(train).not_to be_valid
  end
end
