require 'rails_helper'
RSpec.describe 'admin merchants index dashboard page', type: :feature do
  let!(:merch_1) { Merchant.create!(name: 'name_1') }
  let!(:merch_2) { Merchant.create!(name: 'name_2') }
  before(:each) { visit admin_merchant_path(merch_1.id) }

  describe 'as an admin' do
    describe 'name of merchant' do
      it "shows the name of the merchant" do
        expect(page).to have_content(merch_1.name)
        expect(page).to_not have_content(merch_2.name)
      end
    end
  end
    it "links to a merchant edit page" do
      expect(page).to have_content("Update Merchant")
      click_link "Update Merchant"
      expect(current_path).to eq(edit_admin_merchant_path(merch_1))
    end
end
