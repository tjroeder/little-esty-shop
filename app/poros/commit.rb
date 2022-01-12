class Commit
  attr_reader :node_id,
              :author_login,
              :author_id
  
  def initialize(data)
    @node_id = data[:node_id]
    @author_login = data[:author][:login]
    @author_id= data[:author][:id]
  end
end
