require 'rails_helper'

RSpec.describe GithubSearch, type: :poro do
  let!(:gh_search_1) { GithubSearch.new }

  describe 'object' do
    it 'exists' do
      expect(gh_search_1).to be_a(GithubSearch)
    end
  end

  describe 'attributes' do
    it 'has service' do
      expect(gh_search_1.service).to be_a(GithubService)
    end
  end

  describe 'instance methods' do
    describe '#commit_info' do
      it 'creates array of Commit objects' do
        VCR.use_cassette('little_esty_shop_commits') do
          commits = gh_search_1.commit_info
  
          expect(commits.first).to be_a(Commit)
          expect(commits).to be_a(Array)
        end
      end

      it 'creates Commit object with node_id, author_login, and author_id' do
        VCR.use_cassette('little_esty_shop_commits') do
          commits = gh_search_1.commit_info

          expect(commits.first).to have_attributes(node_id: "C_kwDOGnncn9oAKDNhOTQ1NTBmNDdiNTA1NTgwZjVlNzcwMGU5N2Q2YTY1ZDE0NWYxZTU")
          expect(commits.first).to have_attributes(author_login: 'arnaldoaparicio')
          expect(commits.first).to have_attributes(author_id: 88012780)
        end
      end
    end

    describe '#pull_request_info' do
      it 'creates array of PullRequest objects' do
        VCR.use_cassette('little_esty_shop_pull_requests') do
          pull_requests = gh_search_1.pull_request_info
  
          expect(pull_requests.first).to be_a(PullRequest)
          expect(pull_requests).to be_a(Array)
        end
      end
      
      xit 'creates Commit object with number, user_login, user_id, and merged_at' do
        VCR.use_cassette('little_esty_shop_pull_requests') do
          pull_requests = gh_search_1.pull_request_info
          
          expect(pull_requests.first).to have_attributes(node_id: "C_kwDOGnncn9oAKDNhOTQ1NTBmNDdiNTA1NTgwZjVlNzcwMGU5N2Q2YTY1ZDE0NWYxZTU")
          expect(pull_requests.first).to have_attributes(author_login: 'arnaldoaparicio')
          expect(pull_requests.first).to have_attributes(author_id: 88012780)
        end
      end
    end
    
    describe '#contributor_info' do
      it 'creates array of Contributor objects' do
        VCR.use_cassette('little_esty_shop_contributors') do
          contributors = gh_search_1.contributor_info
          
          expect(contributors.first).to be_a(Contributor)
          expect(contributors).to be_a(Array)
        end
      end

      xit 'creates Contributor object with login, and id' do
        VCR.use_cassette('little_esty_shop_contributors') do
          contributors = gh_search_1.contributor_info
            
          expect(contributors.first).to have_attributes(login: "troeder")
          expect(contributors.first).to have_attributes(id: 78194232)
        end
      end
    end

    describe '#repo_info' do
      it 'creates Repo object' do
        VCR.use_cassette('little_esty_shop_commits') do
          VCR.use_cassette('little_esty_shop_pull_requests') do
            VCR.use_cassette('little_esty_shop_contributors') do
              VCR.use_cassette('little_esty_shop_repo') do
                repo = gh_search_1.repo_info
                
                expect(repo).to be_a(Contributor)
              end
            end
          end
        end
      end

      xit 'creates Repo object with name, contributors, commits and pull_requests' do
        VCR.use_cassette('little_esty_shop_repo')
      end
    end
  end
end
