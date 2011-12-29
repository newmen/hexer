def print_result(from, to)
	puts "\"#{from}\" -> \"#{to}\""
end

unless RUBY_VERSION > '1.9.0'
	raise "Can works only on Ruby more than 1.9.0"
end

