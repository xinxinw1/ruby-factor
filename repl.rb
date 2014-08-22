#!/usr/bin/ruby

require_relative "factor"

puts "Enter integers separated by \"+\""
puts "Type \"exit\" to quit."
puts

loop do
  begin
    input = Readline.readline("> ", true).gsub(/\s/, "")
  rescue Exception => e
    # catch Ctrl+C
    puts (e.inspect != "Interrupt" ? "Error: " : "") + e.message
    break
  end
  break if inp(input, "exit", "quit")
  begin
    puts factor_all input
  rescue Exception => e
    # on interrupt, e.message = "", so need to use e.inspect
    mess = e.inspect === "Interrupt" ? e.inspect : e.message
    puts "Error: #{mess}"
  end
end
