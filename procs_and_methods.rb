class ProcsAndMethods
    # TODO: Define Procs
    # double = Proc.new { |x| ... }
    # triple = Proc.new { |x| ... }
    # square = Proc.new { |x| ... }
    # cube = Proc.new { |x| ... }
  
    # TODO: Write a method that:
    # 1. Takes a Proc and an array
    # 2. Applies the Proc to only the EVEN numbers in the array
    def self.apply_proc_to_evens(proc, numbers)
      # Your code here
    end
  
    # TODO: Write a method that:
    # 1. Takes a Proc and two numbers (start, end)
    # 2. Returns an array of numbers in the range transformed by the Proc
    def self.transform_range(proc, start_num, end_num)
      # Your code here
    end
  
    # TODO: Write a method that:
    # 1. Takes two Procs and a number
    # 2. Applies the first Proc, then applies the second Proc to the result
    def self.chain_procs(proc1, proc2, number)
      # Your code here
    end
  
    # TODO: Write a method that:
    # 1. Takes an array of numbers and a Proc
    # 2. Filters numbers where applying the Proc results in an odd number
    def self.filter_odds(proc, numbers)
      # Your code here
    end

    def self.return_proc(proc_name)
        # Define the Procs here
        double = Proc.new { |x| x * 2 }
        triple = Proc.new { |x| x * 3 }
        square = Proc.new { |x| x ** 2 }
        cube   = Proc.new { |x| x ** 3 }
      
        # Return the correct Proc based on the symbol name
        { double: double, triple: triple, square: square, cube: cube }[proc_name]
      end
      
  end
  