require 'spec_helper'

describe Tweet do
  before(:each) do
    @valid_attributes = {
      :text => "value for text",
      :tid => 1,
      :tweeted_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Tweet.create!(@valid_attributes)
  end
end

# == Schema Information
#
# Table name: tweets
#
#  id         :integer         not null, primary key
#  text       :string(255)
#  tid        :integer
#  tweeted_at :datetime
#  created_at :datetime
#  updated_at :datetime
#

