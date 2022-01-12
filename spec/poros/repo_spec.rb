require 'rails_helper'

RSpec.describe Repo, type: :poro do
  let!(:repo_1) do
    data = { name: 'little-esty-shop' }
    Repo.new(data)
  end

  describe 'object' do
    it 'exists' do   
      expect(repo_1).to be_a(Repo)
    end
  end

  describe 'attributes' do
    it 'has name, contributors, commits, and pull requests' do
      expected = { name: 'little-esty-shop' }

      expect(repo_1).to have_attributes(name: 'little-esty-shop')
      expect(repo_1).to have_attributes(contributors: [])
      expect(repo_1).to have_attributes(commits: [])
      expect(repo_1).to have_attributes(pull_requests: [])
    end
  end
end
