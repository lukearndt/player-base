require 'spec_helper'

describe "examples/index" do
  before(:each) do
    assign(:examples, [
      stub_model(Example,
        :first_name => "First Name",
        :last_name => "Last Name",
        :decimal_field => "9.99"
      ),
      stub_model(Example,
        :first_name => "First Name",
        :last_name => "Last Name",
        :decimal_field => "9.99"
      )
    ])
  end

  it "renders a list of examples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
