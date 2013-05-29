require 'spec_helper'

describe "examples/edit" do
  before(:each) do
    @example = assign(:example, stub_model(Example,
      :first_name => "MyString",
      :last_name => "MyString",
      :decimal_field => "9.99"
    ))
  end

  it "renders the edit example form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => examples_path(@example), :method => "post" do
      assert_select "input#example_first_name", :name => "example[first_name]"
      assert_select "input#example_last_name", :name => "example[last_name]"
      assert_select "input#example_decimal_field", :name => "example[decimal_field]"
    end
  end
end
