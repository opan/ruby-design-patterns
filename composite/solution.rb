class Organization
  attr_reader :employes

  def initialize(*args)
    @employes = []
  end

  def add_employee(employee)
    @employes << employee
  end

  def get_salary
    @employes.sum { |t| t.get_salary }
  end
end

class Employee
  def get_salary
  end
end

class Manager < Employee
  def get_salary
    10_000_000
  end
end

class Staff < Employee
  def get_salary
    500_000
  end
end
