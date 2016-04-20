require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :subtotal => "9.99",
        :tax => "9.99",
        :shipping => "9.99",
        :total => "9.99",
        :order_status => nil,
        :order_status_id => 1
      ),
      Order.create!(
        :subtotal => "9.99",
        :tax => "9.99",
        :shipping => "9.99",
        :total => "9.99",
        :order_status => nil,
        :order_status_id => 1
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
