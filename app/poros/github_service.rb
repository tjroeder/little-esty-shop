class GithubService
  attr_reader :repo_url,
              :cont_url,
              :commit_url,
              :pr_url

  def initialize
    @repo_url = 'https://api.github.com/repos/tjroeder/little-esty-shop'
    @cont_url = 'https://api.github.com/repos/tjroeder/little-esty-shop/contributors'
    @commit_url = 'https://api.github.com/repos/tjroeder/little-esty-shop/commits'
    @pr_url = 'https://api.github.com/repos/tjroeder/little-esty-shop/pulls'
  end

  def get_url(url, query)
    if query == true
      url += '?per_page=100'
      data = []
      page = 1
      until get_request(url).empty?
        data += get_request(url)
        page += 1
        url += "&page=#{page}"
      end
    else
      data = get_request(url)
    end
    data
  end
  
  def get_request(url)
    response = HTTParty.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end