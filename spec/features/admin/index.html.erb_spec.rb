require 'rails_helper'

RSpec.describe 'admin index dashboard page', type: :feature do
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
    end
  end
end