

# employee_1 = ["Helen", "Bonhom Carter", 80000, true]
# employee_2 = ["Peter", "Gibbons", 60000, true]

# puts employee_1[0] + ' ' + employee_1[1] + " makes " + employee_1[2].to_s + " a year."

# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year."

# employee_1 = {first_name: 'Helen', last_name: 'Bonhom Carter', salary: 80000, active: true}
# employee_2 = {:first_name => 'Peter', :last_name => 'Gibbons', :salary => 60000, :active => true}


# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."



class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end

  # def salary
  #   @salary
  # end

  # def active
  #   @active
  # end

  # def active=(new_value)
  #   @active = new_value
  # end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end

end

employee_1 = Employee.new(
                          first_name: 'Chris', 
                          last_name: 'Bowen', 
                          salary: 35000, 
                          active: false
                          )

employee_2 = Employee.new(
                          first_name: 'Ryan', 
                          last_name: 'Kuhns', 
                          salary: 80000, 
                          active: true
                          )


puts employee_1.first_name
puts employee_1.last_name
puts employee_1.salary


employee_1.print_info
employee_2.print_info

puts employee_1.active
employee_1.active = true
puts employee_1.active