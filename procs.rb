class ProcChallenge
    def self.define_procs
        double = Proc.new { |x| x * 2 }
        triple = Proc.new { |x| x * 3 }

        # DO NOT EDIT
        return double, triple
    end

    # DO NOT EDIT
    def self.return_proc(proc_name)
        double, triple = define_procs
        { double: double, triple: triple }[proc_name]
    end
end