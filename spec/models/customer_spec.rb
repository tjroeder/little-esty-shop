require 'rails_helper'

RSpec.describe Customer, type: :model do

  let!(:cust_1) { Customer.create!(first_name: 'fn_1', last_name: 'ln_1') }

  describe 'relations' do
    it {should have_many(:invoices)}
    it {should have_many(:invoice_items).through(:invoices)}
    it {should have_many(:items).through(:invoice_items)}
    it {should have_many(:merchants).through(:items)}
    it {should have_many(:transactions).through(:invoices)}
  end

  describe 'validations' do
    it {should validate_presence_of :first_name}
    it {should validate_presence_of :last_name}
  end

  it "returns the customers first and last name" do
    expect(cust_1.customer_full_name).to eq("fn_1 ln_1")
  end
end
