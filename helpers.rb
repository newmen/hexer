unless RUBY_VERSION > '1.9'
  raise "Can works only on Ruby more than 1.9"
end

def print_result(from, to)
  puts "\"#{from}\" -> \"#{to}\""
end

