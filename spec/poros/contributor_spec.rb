require 'rails_helper'

RSpec.describe Contributor, type: :poro do
  let!(:contributor_1) do
    data = {login: 'troeder', id: 78194232}
    Contributor.new(data)
  end

  describe 'object' do
    it 'exists' do
      expect(contributor_1).to be_a(Contributor)
    end
  end

  describe 'attributes' do
    it 'has login, id, commits, pull_requests' do
      expected = {login: 'troeder', id: 78194232}

      expect(contributor_1).to have_attributes(login: expected[:login])
      expect(contributor_1).to have_attributes(id: expected[:id])
      expect(contributor_1).to have_attributes(commits: [])
      expect(contributor_1).to have_attributes(pull_requests: [])
    end
  end
end
