require 'spec_helper'

describe "callbacks/edit" do
  before(:each) do
    @callback = assign(:callback, stub_model(Callback))
  end

  it "renders the edit callback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", callback_path(@callback), "post" do
    end
  end
end
