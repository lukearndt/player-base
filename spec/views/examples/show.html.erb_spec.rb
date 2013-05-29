require 'spec_helper'

describe "examples/show" do
  before(:each) do
    @example = assign(:example, stub_model(Example,
      :first_name => "First Name",
      :last_name => "Last Name",
      :decimal_field => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/9.99/)
  end
end
