# frozen_string_literal: true

require 'rest-client'

class Bing
  def self.search(query)
    response = RestClient.get 'https://www.bing.com/search?', params: { 'q=' => query }

    puts response.body
  end
end

print 'search input' 
input_query = gets.chomp
Bing.search(input_query)
