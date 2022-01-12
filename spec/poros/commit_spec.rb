require 'rails_helper'

RSpec.describe Commit, type: :poro do
  let!(:commit_1) do
    data = {node_id: 'C_kwDOGnncn9oAKDc2Mzc1OGUyNjM5NTNlMmYyNzkzNjA5Njk3MDA4ZTM2ZGU2Mjc1Zjg', author: {login: 'tjroeder', id: 78194232}}

    Commit.new(data)
  end

  describe 'object' do
    it 'exists' do     
      expect(commit_1).to be_a(Commit)
    end
  end

  describe 'attributes' do
    it 'has node_id, author_login, and author_id' do
      expected = {node_id: 'C_kwDOGnncn9oAKDc2Mzc1OGUyNjM5NTNlMmYyNzkzNjA5Njk3MDA4ZTM2ZGU2Mjc1Zjg', author: {login: 'tjroeder', id: 78194232}}

      expect(commit_1).to have_attributes(node_id: expected[:node_id])
      expect(commit_1).to have_attributes(author_login: expected[:author][:login])
      expect(commit_1).to have_attributes(author_id: expected[:author][:id])
    end
  end
end
