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
    describe '#get_request' do
      
    end
  end
end
