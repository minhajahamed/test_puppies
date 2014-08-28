require_relative 'puppy'

FactoryGirl.define do
   factory :order do
      name Faker::Name.name
      address Faker::Address.street_address
      email Faker::Internet.email
      pay_type 'Check'
   end
   factory :adoption do
      association :order
      puppy Puppy.find_by_name('Hanna')
   end

=begin
  Order.populate 5000 do |order|
      order.name = Faker::Name.name
      order.address = Faker::Address.street_address
      order.email = Faker::Internet.email
      order.pay_type = ['Check', 'Credit card', 'Purchase order']
  end
=end

 end