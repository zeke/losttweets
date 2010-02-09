require 'spec_helper'

describe "/tweets/new.html.erb" do
  include TweetsHelper

  before(:each) do
    assigns[:tweet] = stub_model(Tweet,
      :new_record? => true,
      :text => "value for text",
      :tid => 1
    )
  end

  it "renders new tweet form" do
    render

    response.should have_tag("form[action=?][method=post]", tweets_path) do
      with_tag("input#tweet_text[name=?]", "tweet[text]")
      with_tag("input#tweet_tid[name=?]", "tweet[tid]")
    end
  end
end
