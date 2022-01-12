require 'rails_helper'

RSpec.describe GithubService, type: :poro do
  let!(:gh_service_1) { GithubService.new }

  describe 'object' do
    it 'exists' do
      expect(gh_service_1).to be_a(GithubService)
    end
  end

  describe 'attributes' do
    it 'has repo_url, cont_url, commit_url, pr_url' do
      repo_url = 'https://api.github.com/repos/tjroeder/little-esty-shop'
      cont_url = 'https://api.github.com/repos/tjroeder/little-esty-shop/contributors'
      commit_url = 'https://api.github.com/repos/tjroeder/little-esty-shop/commits'
      pr_url = 'https://api.github.com/repos/tjroeder/little-esty-shop/pulls'

      expect(gh_service_1).to have_attributes(repo_url: repo_url)
      expect(gh_service_1).to have_attributes(cont_url: cont_url)
      expect(gh_service_1).to have_attributes(commit_url: commit_url)
      expect(gh_service_1).to have_attributes(pr_url: pr_url)
    end
  end

  describe 'instance methods' do
    describe '#get_url' do
      it 'will gather more than 30 commits if query is true' do
        VCR.use_cassette('little_esty_shop_commits') do
          url = gh_service_1.commit_url
          result = gh_service_1.get_url(url, true)

          expect(result.count).to be > (30)
        end
      end

      it 'will gather less than 30 commits if query is false' do
        VCR.use_cassette('little_esty_shop_30_commits') do
          url = gh_service_1.commit_url
          result = gh_service_1.get_url(url, false)

          expect(result.count).to eq(30)
        end
      end
    end

    describe '#get_request' do
      it 'returns a hash if given correct URL' do
        VCR.use_cassette('little_esty_shop_repo') do
          url = gh_service_1.repo_url

          expect(gh_service_1.get_request(url)).to be_a(Hash)
        end
      end
    end
  end
end
