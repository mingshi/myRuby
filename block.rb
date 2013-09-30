#!/usr/bin/env ruby
class Mingshi
    def initialize(name, age)
        @name = name
        @age = age
    end
    attr_reader:name
    attr_accessor:age

    def say_name
        yield
        puts @name
    end

    def say_age
        yield
        puts @age
    end

    def say_call(p)
        puts "Start"
        p.call
        puts "End"
    end

    def recycle
        9.downto(1) {|i| print i if i < 6}
        print "\n"
        1.upto(9) {|i| print i if i < 7}
        print "\n"
        0.step(12,3) {|i| print i}
        print "\n"
        3.times { puts "i am a Geek!" }
        1.upto(9) do |x|
            print x, " "
        end
    end
    
    def res(res)
        if res.respond_to?("each")
            print "\n"
            puts res[0]
        end
    end

end
t = Mingshi.new('mingshi', 28)
t.say_name {puts "test1"}
t.age = 29
t.say_age { puts "test2" }
t.say_call(proc{puts "Love"})
t.recycle
t.res([1,2,3])
