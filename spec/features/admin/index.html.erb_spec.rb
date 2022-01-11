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
      
      describe 'top customers section' do
        before(:each) { visit admin_index_path }
        
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
      
      describe 'incomplete invoices section' do
        let!(:invoice_1) { create(:invoice, created_at: DateTime.new(2022, 1, 5, 0 , 0, 0)) }
        
        let!(:ii_packaged) { create(:invoice_item, :packaged, invoice: invoice_1) }
        let!(:ii_shipped) { create(:invoice_item, :shipped) }
        let!(:ii_list_pending) { create_list(:invoice_item, 2, :pending) }
        
        before(:each) { visit admin_index_path }
        
        it 'displays a header for incomplete invoices' do
          expect(page).to have_css('h2', text: 'Incomplete Invoices')
        end
        
        it 'displays a list of all incomplete invoices' do
          expect(page).to have_content("Invoice ##{ii_packaged.invoice.id}")
          expect(page).to have_content("Invoice ##{ii_list_pending[0].invoice.id}")
          expect(page).to have_content("Invoice ##{ii_list_pending[1].invoice.id}")
        end
        
        it 'does not display shipped invoices' do
          expect(page).to have_no_content("Invoice ##{ii_shipped.invoice.id}")
        end
        
        it 'invoice ids are links to the admin invoice show page' do
          within("#invoice-#{ii_list_pending[0].invoice_id}") do
            expect(page).to have_link("##{ii_list_pending[0].invoice_id}", href: admin_invoice_path(ii_list_pending[0].invoice))
          end
          
          within("#invoice-#{ii_list_pending[1].invoice_id}") do
            expect(page).to have_link("##{ii_list_pending[1].invoice_id}", href: admin_invoice_path(ii_list_pending[1].invoice))
          end
          
          within("#invoice-#{ii_packaged.invoice_id}") do
            expect(page).to have_link("##{ii_packaged.invoice_id}", href: admin_invoice_path(ii_packaged.invoice))
          end
        end
        
        it 'displays invoice create date next to incomplete invoices' do
          within("#invoice-#{ii_packaged.invoice_id}") do
            expect(page).to have_content('Wednesday, January 5, 2022')
          end
        end

        it 'displays invoices in order created order oldest to newest' do
          oldest_invoice = create(:invoice, created_at: DateTime.new(2000, 1, 5, 0 , 0, 0))
          oldest_ii = create(:invoice_item, invoice: oldest_invoice)
          visit admin_index_path

          expect("#{oldest_invoice.id}").to appear_before("#{invoice_1.id}")
          expect("#{oldest_invoice.id}").to appear_before("#{ii_list_pending[0].invoice_id}")
          expect("#{oldest_invoice.id}").to appear_before("#{ii_list_pending[1].invoice_id}")
          expect("#{invoice_1.id}").to appear_before("#{ii_list_pending[0].invoice_id}")
          expect("#{invoice_1.id}").to appear_before("#{ii_list_pending[1].invoice_id}")
          expect("#{ii_list_pending[0].invoice_id}").to appear_before("#{ii_list_pending[1].invoice_id}")
        end
      end
    end
    
    describe 'clickable page elements' do
      it 'redirects to admin merchants index page' do
        click_link 'Merchants'
        expect(page).to have_current_path(admin_merchants_path)
      end
      
      it 'redirects to admin invoice index page' do
        click_link 'Invoices'
        expect(page).to have_current_path(admin_invoices_path)
      end
      
      it 'redirects to the admin invoice show page' do
        ii_packaged = create(:invoice_item, :packaged) 
        ii_pending = create(:invoice_item, :pending)
        visit admin_index_path

        within("#invoice-#{ii_pending.invoice_id}") do
          click_link ii_pending.invoice_id
          expect(page).to have_current_path(admin_invoice_path(ii_pending.invoice))
        end

        visit admin_index_path
                
        within("#invoice-#{ii_packaged.invoice_id}") do
          click_link ii_packaged.invoice_id
          expect(page).to have_current_path(admin_invoice_path(ii_packaged.invoice))
        end
      end
    end
  end
end
