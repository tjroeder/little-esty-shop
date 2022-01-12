require 'rails_helper'

RSpec.describe PullRequest, type: :poro do
  let!(:pull_request_1) do
    data = { number: 77, user:{ login: 'arnaldoaparicio', id: 88012780 }, merged_at: "2022-01-11T20:31:46Z" }
    PullRequest.new(data)
  end

  describe 'object' do
    it 'exists' do
      expect(pull_request_1).to be_a(PullRequest)
    end
  end

  describe 'attributes' do
    it 'has number, user_login, user_id, merged_at' do
      expected = { number: 77, user:{ login: 'arnaldoaparicio', id: 88012780 }, merged_at: "2022-01-11T20:31:46Z" }

      expect(pull_request_1).to have_attributes(number: expected[:number])
      expect(pull_request_1).to have_attributes(user_login: expected[:user][:login])
      expect(pull_request_1).to have_attributes(user_id: expected[:user][:id])
      expect(pull_request_1).to have_attributes(merged_at: expected[:merged_at])
    end
  end
end
