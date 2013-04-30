require 'benchmark'

Benchmark.bm do |x|
	x.report { puts "ola" }
end
