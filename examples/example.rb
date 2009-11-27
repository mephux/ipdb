#!/usr/bin/env ruby

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require "rubygems"
require "ipdb"

# puts Ipdb::Query.new('snorby.org').to_xml
# puts Ipdb::Query.new('snorby.org').to_json

@ips = ['173.45.230.150', '219.150.227.101', '219.159.199.34', '222.134.69.181', '222.188.10.1', '68.82.102.9', '80.108.206.239',
        '85.113.252.214', '86.100.64.151', '85.132.201.196', '82.228.53.39', '80.35.156.3', '82.238.32.72', '89.77.158.227', '87.97.237.135', '69.226.246.172']

# Ipdb::Query.new(@ips, :timeout => 1).each do |ip|
#   puts ip.hostname if ip.hostname
# end

ips = ['127.0.0.1', 'snorby.org', '64.13.134.52']

Ipdb::Query.new(ips, :timeout => 1).each do |ip|
 puts ip.hostname
 puts ip.city
end

# puts Ipdb::Query.new(@ips, :zoom => 1).simple_map_url
# 
# graph = Ipdb::Map.new(@ips, :zoom => 1)
# puts graph.render


