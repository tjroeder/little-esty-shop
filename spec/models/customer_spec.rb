require 'rails_helper'

RSpec.describe Customer, type: :model do
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

  describe 'class methods' do
    describe '::top_customers' do
      it 'returns array of 5 customers with successful transactions' do
        customer_1 = create(:customer_with_transactions, transaction_count: 1, transaction_result: :success)
        customer_2 = create(:customer_with_transactions, transaction_count: 2, transaction_result: :success)
        customer_3 = create(:customer_with_transactions, transaction_count: 3, transaction_result: :success)
        customer_4 = create(:customer_with_transactions, transaction_count: 4, transaction_result: :success)
        customer_5 = create(:customer_with_transactions, transaction_count: 5, transaction_result: :success)
        customer_6 = create(:customer_with_transactions, transaction_count: 6, transaction_result: :failed)
        
        expected = [customer_5, customer_4, customer_3, customer_2, customer_1]
        expect(Customer.top_customers).to eq(expected)
        expect(Customer.top_customers.first).to be_a(Customer)
      end
      
      it 'return less customers if not 5 customers with successful transactions' do
        customer_1 = create(:customer_with_transactions, transaction_count: 1, transaction_result: :success)
        customer_2 = create(:customer_with_transactions, transaction_count: 2, transaction_result: :success)
        customer_3 = create(:customer_with_transactions, transaction_count: 3, transaction_result: :success)
        
        expected = [customer_3, customer_2, customer_1]
        expect(Customer.top_customers).to eq(expected)
      end
      
      it 'return no customers if no successful transactions' do
        customer_1 = create(:customer_with_transactions, transaction_count: 1, transaction_result: :failed)
        customer_2 = create(:customer_with_transactions, transaction_count: 2, transaction_result: :failed)

        expect(Customer.top_customers).to eq([])
      end
    end
  end
end
