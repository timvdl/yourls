module Yourls
  class Url
    attr_reader :short_url, :long_url, :keyword, :clicks

    def initialize(options = {})
      if options
        url = options['url'] || Hash.new('')
        @short_url = options['shorturl']
        @long_url = options['longurl'] || url['url']
        @keyword = options['keyword'] || url['keyword']
        @clicks = options['link']['clicks'] || url['link']['clicks']
      end
    end
  end
end
