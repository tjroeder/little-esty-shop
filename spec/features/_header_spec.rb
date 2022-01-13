# require 'rails_helper'

# RSpec.describe 'header', type: :feature do
#   before(:each) do
#     @merchant_1 = Merchant.create!(name: 'Joe Shmoe')
#   end

#   let!(:gh_search_1) { GithubSearch.new }
#   let(:cassettes) { [
#                     { name: 'little_esty_shop_commits' },
#                     { name: 'little_esty_shop_pull_requests' },
#                     { name: 'little_esty_shop_contributors' },
#                     { name: 'little_esty_shop_repo' }
#                     ] }
#   let(:commits) { VCR.use_cassettes(cassettes) { gh_search_1.commit_info } }
#   let(:pull_requests) { VCR.use_cassettes(cassettes) { gh_search_1.pull_request_info } }
#   let(:contributors) { VCR.use_cassettes(cassettes) { gh_search_1.contributor_info } }
#   let(:repo) { VCR.use_cassettes(cassettes) { gh_search_1.repo_info } }
#   let(:visit_merchant) { visit merchant_items_path(@merchant_1) }


#   it 'has the repo name' do
#     cassettes = [
#       { name: 'little_esty_shop_commits' },
#       { name: 'little_esty_shop_pull_requests' },
#       { name: 'little_esty_shop_contributors' },
#       { name: 'little_esty_shop_repo' }
#     ]

#     VCR.use_cassettes(cassettes) do
#       visit merchant_items_path(@merchant_1)
#       expect(page).to have_content('little-esty-shop')
#     end
#   end

#   it 'displays the number of commits for user' do
#     visit_merchant
#     within("#contributor-#{repo.contributor[0].id}") do
#       expect(page).to have_content("#{repo.contributor[0].login}")
#       expect(page).to have_content("#{repo.contributor[0].commits.count}")
#     end
#   end

#   it 'displays the usernames of each group member' do
#     cassettes = [
#       { name: 'little_esty_shop_commits' },
#       { name: 'little_esty_shop_pull_requests' },
#       { name: 'little_esty_shop_contributors' },
#       { name: 'little_esty_shop_repo' }
#     ]

#     VCR.use_cassettes(cassettes) do
#       visit merchant_items_path(@merchant_1)
#       expect(page).to have_content('tjroeder')
#       expect(page).to have_content('arnaldoaparicio')
#       expect(page).to have_content('WadeNaughton')
#       expect(page).to have_content('echon006')
#     end
#   end

#   xit 'displays the number of merged PRs' do
#     cassettes = [
#       { name: 'little_esty_shop_commits' },
#       { name: 'little_esty_shop_pull_requests' },
#       { name: 'little_esty_shop_contributors' },
#       { name: 'little_esty_shop_repo' }
#     ]

#     VCR.use_cassettes(cassettes) do
#       visit merchant_items_path(@merchant_1)
#       expect(page).to have_content(99)
#     end
#   end
# end
