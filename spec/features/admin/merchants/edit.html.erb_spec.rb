require 'rails_helper'
RSpec.describe 'admin merchants edit page', type: :feature do
  let!(:merch_1) { Merchant.create!(name: 'name_1') }
  before(:each) { visit edit_admin_merchant_path(merch_1) }

  it "has existing info" do
    expect(page).to have_field("Name", with: "#{merch_1.name}")
  end

  it "when I update the information and click submit I am taken back to show and see the updated info" do
    fill_in("Name", with: "name2")
    click_button("Update Merchant")
    expect(current_path).to eq(admin_merchant_path(merch_1.id))
    expect(page).to have_content("name2")
    expect(:notice).to be_present
  end
end
