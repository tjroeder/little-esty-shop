class Repo
  attr_reader :name,
              :contributors,
              :commits,
              :pull_requests
  
  def initialize(data)
    @name = data[:name]
    @contributors = []
    @commits = []
    @pull_requests = []
  end
end
