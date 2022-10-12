 class Officer
        @name_109
        @age_109
        @gender_109
        @address_109
        
        attr_accessor :name_109,:age_109,:gender_109,:address_109

        def initialize(name_109,age_109,gender_109,address_109)
            @name_109 = name_109 
            @age_109 = age_109 
            @gender_109 = gender_109
            @address_109 = address_109
        end


end

class Engineer < Officer
    @branch_109
    attr_accessor :branch_109

    def initialize(branch_109,name_109,age_109,gender_109,address_109)
        @branch_109 = branch_109
        super(name_109,age_109,gender_109,address_109)
    end

    def to_s
        "Engineer{" +"branch='" + @branch_109 + '\'' +", name='" + @name_109 + '\'' +", age=" + @age_109 +", gender='" + @gender_109 + '\'' +", address='" + @address_109 + '\'' +'}'
    end

end

class Worker < Officer
    @level_109 
    attr_accessor :level_109
    def initialize(name_109,age_109,gender_109,address_109,level_109)
        super(name_109,age_109,gender_109,address_109)
        @level_109 = level_109
    end

    def to_s
        "Worker{" + "level=" + @level_109 +", name='" + @name_109 + '\'' +", age=" + @age_109 +", gender='" + @gender_109 + '\'' +", address='" + @address_109 + '\'' +'}'
    end 
end 

class Staff < Officer
    @task_109 
    attr_accessor :task_109

    def initialize (name_109,age_109,gender_109,address_109,task_109)
        super(name_109,age_109,gender_109,address_109)
        @task_109 = task_109
    end

    def to_s
        "Staff{" +"task='" + @task_109 + '\'' +", name='" + @name_109 + '\'' +", age=" + @age_109 +", gender='" + @gender_109 + '\'' +", address='" + @address_109 + '\'' +'}'
    end 
end



offices_109 = Array.new


while (true)
    puts("Application Manager Officer");
    puts("Enter 1: To insert officer");
    puts("Enter 2: To show information officers");
    puts("Enter 3: To search officer by name: " );
    puts("Enter 4: To exit:");
    index_109 = gets.to_i

    case index_109
    when 1
        puts("Enter 1: to insert Enginner");
        puts("Enter 2: to insert Worker");
        puts("Enter 3: to insert Staff");

        chosen_109 = gets.to_i

        case chosen_109
        when 1
            print("nhap vao branch: ")
            branch = gets.to_s
            print("nhap vao name: ")
            name = gets.to_s
            print("nhap vao age: ")
            age = gets.to_s
            print("nhap vao gender: ")
            gender = gets.to_s
            print("nhap vao address: ")
            address = gets.to_s

            engineer_109 = Engineer.new(branch,name,age,gender,address)

            offices_109 << engineer_109
        
        when 2
            print("nhap vao level: ")
            level = gets.to_s
            print("nhap vao name: ")
            name = gets.to_s
            print("nhap vao age: ")
            age = gets.to_s
            print("nhap vao gender: ")
            gender = gets.to_s
            print("nhap vao address: ")
            address = gets.to_s

            worker_109 = Worker.new(name,age,gender ,address,level)

            offices_109 << worker_109
       
        when 3
            print("nhap vao task: ")
            task = gets.to_s
            print("nhap vao name: ")
            name = gets.to_s
            print("nhap vao age: ")
            age = gets.to_s
            print("nhap vao gender: ")
            gender = gets.to_s
            print("nhap vao address: ")
            address = gets.to_s

            staff_109 = Staff.new(name,age,gender ,address,task)

            offices_109 << staff_109       
        else break
        end
        
    when 2      

        offices << engineer2

        len = offices.length

        for i in 0..len
            puts offices[i]
        end
    else break
    end        
end

