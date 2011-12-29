require File.dirname(__FILE__) + "/helpers"

if ARGV.size > 1
	raise "Could not be taken more than 1 argument"
elsif ARGV.size == 0
	raise "Should be taken 1 argument which is a string containing hex codes of chars"
else
	hex_str = ARGV[0]
end

text = ''
hex_str.split.each do |hex_char|
	s = '\\' + 'u' + hex_char.rjust(4, '0')
	s = "\"#{s}\""
	text << eval(s)
end

print_result(hex_str, text)

