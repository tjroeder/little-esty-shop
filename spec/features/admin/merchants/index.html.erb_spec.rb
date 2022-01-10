require 'rails_helper'
RSpec.describe 'admin merchants index dashboard page', type: :feature do
  let!(:merch_1) { Merchant.create!(name: 'name_1') }
  let!(:merch_2) { Merchant.create!(name: 'name_2') }
  before(:each) { visit admin_merchants_path }

  describe 'as an admin' do
    describe 'name of every merchant' do
      it 'displays header for admin dashboard' do
        expect(page).to have_content(merch_1.name)
        expect(page).to have_content(merch_2.name)
      end
    end
  end
    describe 'link to admin merchant show page' do
      it "links to the admin merchant show page" do
        click_link "#{merch_1.name}"
        expect(current_path).to eq(admin_merchant_path(merch_1))
      end
    end
    describe 'Link to create a new merchant' do
      it "links to new page to create new merchant" do
        expect(page).to have_link("Create New Merchant")
        click_link "Create New Merchant"
        expect(current_path).to eq(new_admin_merchant_path)
      end
    end
end
