require 'nokogiri'
require 'open-uri'
require 'enumerator'
require 'uri'

module Ipdb
  class Query

    # The IPinfoDB url
    # @example http://ipinfodb.com/ip_query.php?ip=127.0.0.1&output=json
    SCRIPT = 'http://ipinfodb.com/ip_query.php'

    # ip address to lookup
    attr_reader :ip

    def initialize(attributes={})
      @ip = attributes[:ip]
      @output = (attributes[:output] || :xml).to_sym
      @url = "#{SCRIPT}?ip=#{URI.escape(@ip)}&output=#{@output}"
      @xml = Nokogiri::XML.parse(open(@url))
    end

  end
end