require 'spec_helper'

describe "dishes/new.html.erb" do
  before(:each) do
    assign(:dish, stub_model(Dish,
      :name => "MyString",
      :recipe => "MyText",
      :category_id => 1
    ).as_new_record)
  end

  it "renders new dish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dishes_path, :method => "post" do
      assert_select "input#dish_name", :name => "dish[name]"
      assert_select "textarea#dish_recipe", :name => "dish[recipe]"
      assert_select "input#dish_category_id", :name => "dish[category_id]"
    end
  end
end
