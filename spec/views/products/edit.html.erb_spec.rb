require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "MyString",
      :description => "MyText",
      :colour => "MyString",
      :price => "9.99",
      :active => false
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_colour[name=?]", "product[colour]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_active[name=?]", "product[active]"
    end
  end
end
