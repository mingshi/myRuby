#!/usr/bin/env ruby
@@total = 1

class Test
    attr_accessor :total
    attr_accessor :other
    def initialize()
        @@total = 5
        @other = 1
    end
end

g = Test.new
g.other = 2
g.total = 3

puts @@total
puts g.other

p = Test.new
puts @@total
puts p.other
