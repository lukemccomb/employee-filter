require "../lib/employee_filter"
require "../data/employees"

before_06 = EmployeeFilter.new(EMPLOYEES).started_before_2006

all_w_date = EmployeeFilter.new(EMPLOYEES).all_with_start_date

p before_06
p all_w_date

