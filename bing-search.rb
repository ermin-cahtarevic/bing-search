require 'rest-client'

class Bing
  def self.search (query)
    response = RestClient.get 'https://www.bing.com/search?', {params: {'q=' => query}}
  end
end
