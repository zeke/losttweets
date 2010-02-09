class Tweet < ActiveRecord::Base
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

