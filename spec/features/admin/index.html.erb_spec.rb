require 'rails_helper'

RSpec.describe 'admin index dashboard page', type: :feature do
  let!(:customer_1) { create(:customer_with_transactions, transaction_count: 1, transaction_result: :success) }
  let!(:customer_2) { create(:customer_with_transactions, transaction_count: 2, transaction_result: :success) }
  let!(:customer_3) { create(:customer_with_transactions, transaction_count: 3, transaction_result: :success) }
  let!(:customer_4) { create(:customer_with_transactions, transaction_count: 4, transaction_result: :success) }
  let!(:customer_5) { create(:customer_with_transactions, transaction_count: 5, transaction_result: :success) }
  let!(:customer_6) { create(:customer_with_transactions, transaction_count: 6, transaction_result: :failed) } 

  before(:each) { visit admin_index_path }

  describe 'as an admin' do
    describe 'views page elements' do
      it 'displays header for admin dashboard' do
        expect(page).to have_css('h1', text: 'Admin Dashboard')
      end

      it 'displays links to admin merchants index' do
        expect(page).to have_link('Merchants', href: admin_merchants_path)
      end

      it 'displays links to admin invoices index' do
        expect(page).to have_link('Invoices', href: admin_invoices_path)
      end

      it 'displays top customers section' do
        expect(page).to have_css('h2', text: 'Top Customers')
      end

      it 'displays the top 5 customers in the top customers section' do
        expect(page).to have_content("#{customer_1.full_name}")
        expect(page).to have_content("#{customer_2.full_name}")
        expect(page).to have_content("#{customer_3.full_name}")
        expect(page).to have_content("#{customer_4.full_name}")
        expect(page).to have_content("#{customer_5.full_name}")
        expect(page).to have_no_content("#{customer_6.full_name}")
      end

      it 'displays the top 5 customers with most to least' do
        expect("#{customer_5.full_name}").to appear_before("#{customer_4.full_name}")
        expect("#{customer_5.full_name}").to appear_before("#{customer_3.full_name}")
        expect("#{customer_5.full_name}").to appear_before("#{customer_2.full_name}")
        expect("#{customer_5.full_name}").to appear_before("#{customer_1.full_name}")
        expect("#{customer_4.full_name}").to appear_before("#{customer_3.full_name}")
        expect("#{customer_4.full_name}").to appear_before("#{customer_2.full_name}")
        expect("#{customer_4.full_name}").to appear_before("#{customer_1.full_name}")
        expect("#{customer_3.full_name}").to appear_before("#{customer_2.full_name}")
        expect("#{customer_3.full_name}").to appear_before("#{customer_1.full_name}")
        expect("#{customer_2.full_name}").to appear_before("#{customer_1.full_name}")
      end

      it 'displays the customers successful transaction count' do
        within("#customer-#{customer_1.id}") do
          expect(page).to have_content("#{customer_1.purchase_count} purchases")
        end

        within("#customer-#{customer_2.id}") do
          expect(page).to have_content("#{customer_2.purchase_count} purchases")
        end

        within("#customer-#{customer_3.id}") do
          expect(page).to have_content("#{customer_3.purchase_count} purchases")
        end

        within("#customer-#{customer_4.id}") do
          expect(page).to have_content("#{customer_4.purchase_count} purchases")
        end

        within("#customer-#{customer_5.id}") do
          expect(page).to have_content("#{customer_5.purchase_count} purchases")
        end
      end
    end
    describe 'clickable page elements' do
      it "redirects to admin merchants index" do
        click_link 'Merchants'
        expect(page).to have_current_path(admin_merchants_path)
      end
      it "redirects to admin invoice index" do
        click_link 'Invoices'
        expect(page).to have_current_path(admin_invoices_path)
      end
    end
  end
end
