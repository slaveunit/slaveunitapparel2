FactoryGirl.define do
  factory :order do
    subtotal "9.99"
    tax "9.99"
    shipping "9.99"
    total "9.99"
    order_status nil
    order_status_id 1
  end
end
