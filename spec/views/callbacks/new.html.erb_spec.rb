require 'spec_helper'

describe "callbacks/new" do
  before(:each) do
    assign(:callback, stub_model(Callback).as_new_record)
  end

  it "renders new callback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", callbacks_path, "post" do
    end
  end
end
