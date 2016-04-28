<<<<<<< HEAD
require 'socket'

hostname = 'chat.freenode.net'
port = 6667
nick = 'trpygfv'
user = nick
real = nick
channel = "#reddit-dailyprogrammer"
msg = "HelloWorld!"

sock = TCPSocket.new hostname, port
login = "NICK #{nick}", "USER #{user} 0 * :#{real}\n"
sock.puts login
puts login

ircRegex = /^(?:[:](\S+) )?(\S+)(?: (?!:)(.+?))?(?: [:](.+))?$/
nickRegex = /^(?:[:](\S+)\!)?.*$/

while line = sock.gets do
  regexGroup = line.match(ircRegex).captures
  puts line
  if line =~ /^PING :/
    sock.puts line.sub "I", "O"
    puts line.sub "I", "O"
  elsif regexGroup[1] == "376"
    joinChannel = "JOIN #{channel}\n"
    sock.puts joinChannel
    puts joinChannel
  elsif regexGroup[1] == "JOIN" && line.match(nickRegex).captures[0] == nick
    firstMessage = "PRIVMSG #{regexGroup[2].strip} :#{msg}"
    sock.puts firstMessage
    puts firstMessage
  elsif regexGroup[1] == "PRIVMSG"
    privateMessage = "PRIVMSG #{regexGroup[2].strip} :#{line.match(nickRegex).captures[0]} :#{msg}\n"
    sock.puts privateMessage
    puts privateMessage
  end
end
sock.close
=======
require 'socket'

hostname = 'chat.freenode.net'
port = 6667
nick = 'trpygfv'
user = nick
real = nick
channel = "#reddit-dailyprogrammer"
msg = "HelloWorld!"

sock = TCPSocket.new hostname, port
login = "NICK #{nick}", "USER #{user} 0 * :#{real}\n"
sock.puts login
puts login

ircRegex = /^(?:[:](\S+) )?(\S+)(?: (?!:)(.+?))?(?: [:](.+))?$/
nickRegex = /^(?:[:](\S+)\!)?.*$/

while line = sock.gets do
  regexGroup = line.match(ircRegex).captures
  puts line
  if line =~ /^PING :/
    sock.puts line.sub "I", "O"
    puts line.sub "I", "O"
  elsif regexGroup[1] == "376"
    joinChannel = "JOIN #{channel}\n"
    sock.puts joinChannel
    puts joinChannel
  elsif regexGroup[1] == "JOIN" && line.match(nickRegex).captures[0] == nick
    firstMessage = "PRIVMSG #{regexGroup[2].strip} :#{msg}"
    sock.puts firstMessage
    puts firstMessage
  elsif regexGroup[1] == "PRIVMSG"
    privateMessage = "PRIVMSG #{regexGroup[2].strip} :#{line.match(nickRegex).captures[0]} :#{msg}\n"
    sock.puts privateMessage
    puts privateMessage
  end
end
sock.close
>>>>>>> 028b25b0cc2dcace94bb9fa47bcd70c73bc1dd1a
