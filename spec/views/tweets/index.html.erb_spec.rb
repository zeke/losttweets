require 'spec_helper'

describe "/tweets/index.html.erb" do
  include TweetsHelper

  before(:each) do
    assigns[:tweets] = [
      stub_model(Tweet,
        :text => "value for text",
        :tid => 1
      ),
      stub_model(Tweet,
        :text => "value for text",
        :tid => 1
      )
    ]
  end

  it "renders a list of tweets" do
    render
    response.should have_tag("tr>td", "value for text".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
