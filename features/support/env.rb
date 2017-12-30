require 'childprocess'
require 'httparty'
require 'timeout'

server = ChildProcess.build('ruby', '-S', 'rackup', '--port', '9999')
server.start

Timeout.timeout(3) do
  loop do
    begin
      HTTParty.get('http://localhost:9999')
      break
    rescue Errno::ECONNREFUSED => try_again
      sleep 0.1
    end
  end
end

at_exit do
  server.stop
end
