require 'rspec'
require 'page-object'
require 'faker'
require 'data_magic'
require 'nokogiri'
require 'builder'
require 'require_all'
require 'soap-object'

require_rel 'pages'

 PageObject::PageFactory.routes = {
     :default => [[HomePage, :select_puppy,'Brook'],
                 [DetailsPage, :add_to_cart],
                 [ShoppingCartPage, :proceed_to_checkout],
                 [CheckoutPage, :checkout]],
     :route_new => [[HomePage, :select_puppy,'Brook'],
                  [DetailsPage, :add_to_cart],
                  [ShoppingCartPage, :proceed_to_checkout]],
 }

=begin
PageObject::PageFactory.route_data = {
     :route_new => :some_data,
 }
=end


World(PageObject::PageFactory)
World(SoapObject::Factory)