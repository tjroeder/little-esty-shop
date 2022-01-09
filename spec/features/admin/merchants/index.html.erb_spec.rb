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
end
