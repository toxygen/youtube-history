require 'json'
require 'httparty'

PAGE = ARGV[0] || 1

class YoutubeHistoryClient
  include HTTParty

  def initialize(opts)
    @api_key = opts[:api_key]
  end

  def get_history(page)    
    startIndex = 25 * ( page.to_i - 1 ) +  1
    options = { :headers => { "Authorization" => "OAuth #{@api_key}"} }
    url = "https://gdata.youtube.com/feeds/api/users/default/watch_history?v=2&alt=json&start-index=#{startIndex}"
    response = self.class.get(url, options).parsed_response

    return parse_history(response)
  end

private

  def parse_history(history_json)
    history_json["feed"]["entry"].map do |json|
      {
        title: json["title"]["$t"]
      }
    end 
  end 
end

youtube_client = YoutubeHistoryClient.new({ api_key: ENV['youtube_api_key'] })

jj youtube_client.get_history(PAGE)

