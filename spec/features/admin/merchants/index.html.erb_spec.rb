require 'rails_helper'
RSpec.describe 'admin merchants index dashboard page', type: :feature do
  # let!(:merch_1) { Merchant.create!(name: 'name_1') }
  # let!(:merch_2) { Merchant.create!(name: 'name_2') }
  # before(:each) { visit admin_merchants_path }

  describe 'as an admin' do
    describe 'name of every merchant' do
      it 'displays header for admin dashboard' do
        merch_1 = Merchant.create!(name: 'name_1')
        merch_2 = Merchant.create!(name: 'name_2')
        visit admin_merchants_path

        expect(page).to have_content(merch_1.name)
        expect(page).to have_content(merch_2.name)
      end
    end
  end
    describe 'link to admin merchant show page' do
      it "links to the admin merchant show page" do
        merch_1 = Merchant.create!(name: 'name_1')
        merch_2 = Merchant.create!(name: 'name_2')
        visit admin_merchants_path

        click_link "#{merch_1.name}"
        expect(current_path).to eq(admin_merchant_path(merch_1))
      end
    end
    describe 'Link to create a new merchant' do
      it "links to new page to create new merchant" do
        merch_1 = Merchant.create!(name: 'name_1')
        merch_2 = Merchant.create!(name: 'name_2')
        visit admin_merchants_path

        expect(page).to have_link("Create New Merchant")
        click_link "Create New Merchant"
        expect(current_path).to eq(new_admin_merchant_path)
      end
    end
    describe 'enable and disable of merchants' do
      it "enables or disbales merchants depending on status" do
        merch_1 = Merchant.create!(name: 'name_1')
        merch_2 = Merchant.create!(name: 'name_2')
        visit admin_merchants_path

        expect(merch_1.status).to eq('Disabled')
        click_button "Enable #{merch_1.name}"
        expect('Enabled Merchants').to appear_before(merch_1.name)
        expect('Disabled Merchants').to_not appear_before(merch_1.name)
        click_button "Disable #{merch_1.name}"
        expect('Disabled Merchants').to appear_before(merch_1.name)
      end
    end

    describe 'top 5 merchants by revenue' do
      it "shows the top 5 merchants by revenue" do
        merchants = create_list(:merchant, 6)
        item1 = create(:item, merchant: merchants[0])
        item2 = create(:item, merchant: merchants[1])
        item3 = create(:item, merchant: merchants[2])
        item4 = create(:item, merchant: merchants[3])
        item5 = create(:item, merchant: merchants[4])
        transactions = create_list(:transaction, 5, result: :success)
        invoice_item1 = create(:invoice_item, item: item1, invoice: transactions[0].invoice, unit_price: 3, quantity: 2)
        invoice_item2 = create(:invoice_item, item: item2, invoice: transactions[1].invoice, unit_price: 4, quantity: 2)
        invoice_item3 = create(:invoice_item, item: item3, invoice: transactions[2].invoice, unit_price: 5, quantity: 2)
        invoice_item4 = create(:invoice_item, item: item4, invoice: transactions[3].invoice, unit_price: 6, quantity: 2)
        invoice_item5 = create(:invoice_item, item: item5, invoice: transactions[4].invoice, unit_price: 1, quantity: 2)
        blahblah = [merchants[3], merchants[2], merchants[1], merchants[0], merchants[4]]
        visit admin_merchants_path

        expect(page).to have_content("Top 5 Merchant by Total Revenue")
        expect(page).to have_content(merchants[0].name)
        expect(page).to have_content(merchants[1].name)
        expect(page).to have_content(merchants[3].name)
        expect(page).to have_content(merchants[4].name)

      end
    end
end
