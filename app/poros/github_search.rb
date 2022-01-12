class GithubSearch
  attr_reader :service
              
  def initialize
    @service = GithubService.new
  end

  def commit_info
    commit_service = @service.get_url(@service.commit_url, true)
    commit_service.map do |data|
      Commit.new(data)
    end
  end
  
  def pull_request_info
    pr_service = @service.get_url(@service.pr_url, true)
    pr_service.map do |data|
      PullRequest.new(data)
    end
  end
  
  def contributor_info
    contributor_service = @service.get_url(@service.cont_url, false)
    contributors = contributor_service.map do |data|
      Contributor.new(data)
    end
  end
  
  def repo_info
    commits = commit_info
    pull_requests = pull_request_info
    contributors = contributor_info

    repo_data = @service.get_url(@service.repo_url, false)

    contributors.each do |cont|
      commits.each do |commit|
        cont.commits << commit if cont.id == commit.author_id
      end

      pull_requests.each do |pr|
        cont.pull_requests << pr if cont.id == pr.user_id
      end
    end
    
    repo = Repo.new(repo_data)
    repo.contributors = contributors
    repo.commits = commits
    repo.pull_requests = pull_requests

    repo
  end
end