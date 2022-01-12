class Contributor
  attr_reader   :login,
                :id
              
  attr_accessor :commits,
                :pull_requests
  
  def initialize(data)
    @login = data[:login]
    @id = data[:id]
    @commits = []
    @pull_requests = []
  end
end
