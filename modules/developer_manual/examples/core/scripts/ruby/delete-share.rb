require 'net/http'
require 'uri'

base_uri = '{oc-examples-server-url}/ocs/v1.php/apps/files_sharing/api/v1/'
uri = URI(base_uri + "shares/115468")

Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
  req = Net::HTTP::Delete.new uri
  req.basic_auth 'your.username', 'your.password'
  res = http.request req

  puts res.body
end
