require 'rails_helper'
RSpec.describe 'admin invoices index dashboard page', type: :feature do
  let!(:merch_1) { Merchant.create!(name: 'name_1') }

  let!(:cust_1) { Customer.create!(first_name: 'fn_1', last_name: 'ln_1') }

  let!(:item_1) { Item.create!(name: 'item_1', description: 'desc_1', unit_price: 1, merchant: merch_1) }

  let!(:invoice_1) { Invoice.create!(status: 2, customer: cust_1) }

  let!(:ii_1) { InvoiceItem.create!(item: item_1, invoice: invoice_1, quantity: 1, unit_price: 1, status: 0) }

  before :each do
    visit "/admin/invoices/#{invoice_1.id}"
  end

  it "checks that the invoice id shows" do
    expect(page).to have_content("Invoice - #{invoice_1.id}")
  end

  it "checks that the invoice status shows" do
    expect(page).to have_content("Status: #{invoice_1.status}")
  end

  it "checks invoice created date/time" do
    expect(page).to have_content("Created on: #{invoice_1.created_at_formatted}")
  end

  it "shows the customers name" do
    expect(page).to have_content("Customer: #{invoice_1.customer.customer_full_name}")
  end

end
