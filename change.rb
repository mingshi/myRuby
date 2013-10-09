#!/usr/bin/env ruby
class Change
    def initialize(f)
        @maper = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖', '拾', '点']
        @f = f
    end
    attr_accessor:f

    def change
        size = @f.chomp.size
        final = size - 1
        finalStr = ""
        0.upto(final) do |i|
            if @f[i] == "."
                key = 11
            else
                key = @f[i].to_i 
            end
            finalStr = finalStr + @maper[key]
        end
        finalStr
    end
end

f = gets
o = Change.new(f)
str = o.change
puts str
