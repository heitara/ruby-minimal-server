require 'webrick'

# root = File.expand_path '~/public_html'
server = WEBrick::HTTPServer.new :Port => 80 #, :DocumentRoot => root

trap 'INT' do server.shutdown end


# server.mount_proc '/lookup' do |req, res|
#   res.body = 'Hello, world!'
# end

JSON_BODY = <<-TEXT
{
 "resultCount":0,
 "results": []
}
TEXT


class Simple < WEBrick::HTTPServlet::AbstractServlet
  def do_GET request, response
    # status, content_type, body, query_string = request

    # puts "query_string: #{request.query()}"

    bundleId = request.query['bundleId']
    puts "bundleId: #{bundleId}"

    response.status = 200
    response['Content-Type'] = 'text/plain'
    response.body = JSON_BODY
  end
end

server.mount '/lookup', Simple

server.start