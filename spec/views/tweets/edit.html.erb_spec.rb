require 'spec_helper'

describe "/tweets/edit.html.erb" do
  include TweetsHelper

  before(:each) do
    assigns[:tweet] = @tweet = stub_model(Tweet,
      :new_record? => false,
      :text => "value for text",
      :tid => 1
    )
  end

  it "renders the edit tweet form" do
    render

    response.should have_tag("form[action=#{tweet_path(@tweet)}][method=post]") do
      with_tag('input#tweet_text[name=?]', "tweet[text]")
      with_tag('input#tweet_tid[name=?]', "tweet[tid]")
    end
  end
end
