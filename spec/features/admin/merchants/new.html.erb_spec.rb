require 'rails_helper'
RSpec.describe 'admin merchants index dashboard page', type: :feature do
  let!(:merch_1) { Merchant.create!(name: 'name_1') }
  let!(:merch_2) { Merchant.create!(name: 'name_2') }
  before(:each) { visit new_admin_merchant_path }

  describe 'new merchant page ' do
    it "has form to create a new merchant" do
      expect(page).to have_field(:name)
      fill_in(:name, with: "Wade")
      click_button("Submit")
      expect(current_path).to eq('/admin/merchants')
      expect(page).to have_content("Wade")
    end
  end
end
