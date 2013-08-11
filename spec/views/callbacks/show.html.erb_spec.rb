require 'spec_helper'

describe "callbacks/show" do
  before(:each) do
    @callback = assign(:callback, stub_model(Callback))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
