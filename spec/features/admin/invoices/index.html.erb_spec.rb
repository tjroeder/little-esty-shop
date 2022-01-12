require 'rails_helper'
RSpec.describe 'admin invoices index dashboard page', type: :feature do
  let!(:merch_1) { Merchant.create!(name: 'name_1') }

  let!(:cust_1) { Customer.create!(first_name: 'fn_1', last_name: 'ln_1') }
  let!(:cust_2) { Customer.create!(first_name: 'fn_2', last_name: 'ln_2') }
  let!(:cust_4) { Customer.create!(first_name: 'fn_4', last_name: 'ln_4') }
  let!(:cust_5) { Customer.create!(first_name: 'fn_5', last_name: 'ln_5') }


  let!(:item_1) { Item.create!(name: 'item_1', description: 'desc_1', unit_price: 1, merchant: merch_1) }
  let!(:item_2) { Item.create!(name: 'item_2', description: 'desc_2', unit_price: 2, merchant: merch_1) }

  let!(:invoice_1) { Invoice.create!(status: 2, customer: cust_1) }
  let!(:invoice_2) { Invoice.create!(status: 2, customer: cust_2) }
  let!(:invoice_5) { Invoice.create!(status: 2, customer: cust_5) }
  let!(:invoice_4) { Invoice.create!(status: 2, customer: cust_4) }

  it "shows a list of all the invoices " do
    visit "/admin/invoices"
    expect(page).to have_content(invoice_1.id)
    expect(page).to have_content(invoice_2.id)
    expect(page).to have_content(invoice_5.id)
    expect(page).to have_content(invoice_4.id)
  end
end
