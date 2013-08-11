require 'spec_helper'

describe "callbacks/index" do
  before(:each) do
    assign(:callbacks, [
      stub_model(Callback),
      stub_model(Callback)
    ])
  end

  it "renders a list of callbacks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
