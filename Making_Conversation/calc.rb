class Calculator
    attr_accessor :nums

    def initialize(nums = "World")
        @nums = nums
    end


    def change_Nums
        loop do
            puts "Entire either one integer or a list of numbers seperated by one space"
            new_N = gets.chomp.strip
            if new_N.empty? 
                puts "Invalid input, please enter an integer!"
            end
            numbers = new_N.split.map do |item|
                begin
                    Integer(item) 
                rescue ArgumentError
                    puts "Invalid entry detected: '#{item}'. Please enter only integers."
                    return nil
                end
            end
            return numbers.length == 1 ? numbers.first : numbers
        end
    end

    def add
        return 0 if @nums.nil? 

        if @nums.respond_to?("each")
            sum = 0
            @nums.each do |nums|
                sum = sum + nums
            end
            return sum
        else 
            return @nums
        end
    end

    def subtract
        return 0 if @nums.nil? 

        if @nums.respond_to?("each")
            sum = 0
            @nums.each do |nums|
                sum = sum - nums
            end
            return sum
        else 
            return @nums
        end
    end

    def multiply
        return 0 if @nums.nil? 

        if @nums.respond_to?("each")
            sum = 1
            @nums.each do |nums|
                sum = sum * nums
            end
            return sum
        else 
            return @nums
        end
    end

    def divide
        return 0 if @nums.nil? 

        if @nums.respond_to?("each")
            sum = @nums[0] ** 2
            @nums.each do |nums|
                sum = sum / nums
            end
            return sum
        else 
            return @nums
        end
    end

    def calculate
        loop do
            puts "What Operations would you like to do?\n (Valid Inputs: +,-,*,/,nums,change,quit)"
            @operations = gets.chomp
            break if @operations ==("quit")
            if @operations == ("+")
                puts "\e[H\e[2J"
                puts ("The sum of numbers is #{add}")
            elsif @operations == ("-")
                puts "\e[H\e[2J"
                puts("The difference of numbers is #{subtract}")
            elsif @operations == ("*")
                puts "\e[H\e[2J"
                puts("The product of numbers is #{multiply}")
            elsif @operations == ("/")
                puts "\e[H\e[2J"
                puts("The product of numbers is #{divide}")
            elsif @operations == ("nums")
                puts "\e[H\e[2J"
                puts("The number(s) are #{@nums}")
            elsif @operations == ("change")
                puts "\e[H\e[2J"
                @nums = change_Nums
                puts("Changed numbers successfully!")
            else
                puts "Invalid input try again"
            end
        end
    end

    if __FILE__ == $0
        calc = Calculator.new([3,2,1])
        calc.calculate
        
    end
end
