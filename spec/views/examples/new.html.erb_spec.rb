require 'spec_helper'

describe "examples/new" do
  before(:each) do
    assign(:example, stub_model(Example,
      :first_name => "MyString",
      :last_name => "MyString",
      :decimal_field => "9.99"
    ).as_new_record)
  end

  it "renders new example form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => examples_path, :method => "post" do
      assert_select "input#example_first_name", :name => "example[first_name]"
      assert_select "input#example_last_name", :name => "example[last_name]"
      assert_select "input#example_decimal_field", :name => "example[decimal_field]"
    end
  end
end
