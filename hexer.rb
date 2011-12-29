require File.dirname(__FILE__) + "/helpers"

str = if ARGV.size > 1
	raise "Could not be taken more than 1 argument"
elsif ARGV.size == 1
	ARGV[0]
else
	getc.chomp
end

chars = []
str.each_char do |c|
	chars << c.ord.to_s(16)
end

print_result(str, chars.join(' '))

