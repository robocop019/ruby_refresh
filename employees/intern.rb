require './employee.rb'
require './reportable.rb'

#random comment

module Actualize
  class Intern < Employee
    include Reportable
  end
end