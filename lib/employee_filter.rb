require "./data/employees"
require "date"

class EmployeeFilter
  def initialize(employees)
    @employees = employees
  end

  def started_before_2006
    @employees.select do |hash|
      hash[:start_date].year < 2006
    end
  end

  def all_with_start_date
    @employees.map do |hash|
      "#{hash[:first_name]} #{hash[:last_name]} (#{hash[:title]}) - #{hash[:start_date].month}/#{hash[:start_date].day}/#{hash[:start_date].year}"
    end
  end

end