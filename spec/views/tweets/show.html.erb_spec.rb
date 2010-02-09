require 'spec_helper'

describe "/tweets/show.html.erb" do
  include TweetsHelper
  before(:each) do
    assigns[:tweet] = @tweet = stub_model(Tweet,
      :text => "value for text",
      :tid => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ text/)
    response.should have_text(/1/)
  end
end
