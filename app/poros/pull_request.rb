class PullRequest
  attr_reader :number,
              :user_login,
              :user_id,
              :merged_at
  
  def initialize(data)
    @number = data[:number]
    @user_login = data[:user][:login]
    @user_id = data[:user][:id]
    @merged_at = data[:merged_at]
  end
end
