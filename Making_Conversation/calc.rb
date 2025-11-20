class Calculator
    attr_accessor :nums

    def initialize(nums = "World")
        @nums = nums
    end
    def add
        sum = 0
        if @nums.nil?
           return sum 
        elsif @nums.respond_to?("each")
            @nums.each do |nums|
                sum = sum + nums
            end
            return sum
        else 
            sum = @nums
            return sum
        end
    end
    def subtract
        sum = 0
        if @nums.nil?
           return sum 
        elsif @nums.respond_to?("each")
            @nums.each do |nums|
                sum = sum - nums
            end
            return sum
        else 
            sum = @nums
            return sum
        end
    end
    def calculate
        puts "What Operations would you like to do?"
        @operations = gets.chomp
        if @operations.equal?("+")
            print(add)
    end
    if __FILE__ == $0
        calc = Calculator.new([1,2,3])
        print(calc.add)
        
    end
end
