
class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end


  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end

end

class Manager < Employee
  # attr_reader :first_name, :last_name, :salary, :active
  # attr_writer :active

  # def initialize(input_options)
  #   @first_name = input_options[:first_name]
  #   @last_name = input_options[:last_name]
  #   @salary = input_options[:salary]
  #   @active = input_options[:active]
  # end


  # def print_info
  #   puts "#{first_name} #{last_name} makes #{salary} a year."
  # end

  # def give_annual_raise
  #   @salary *= 1.05
  # end

  def send_report
    puts "Sending email..."
    puts "Email sent"
  end
end 


employee_1 = Employee.new(
                          first_name: 'Chris', 
                          last_name: 'Bowen', 
                          salary: 35000, 
                          active: false
                          )

employee_2 = Employee.new(
                          first_name: 'David', 
                          last_name: 'Americus', 
                          salary: 75000, 
                          active: true
                          )

manager = Manager.new(
                          first_name: 'Ryan', 
                          last_name: 'Kuhns', 
                          salary: 100000, 
                          active: true
                          )


employee_1.print_info
employee_2.print_info
manager.print_info


puts employee_1.active
employee_1.active = true
puts employee_1.active

manager.send_report