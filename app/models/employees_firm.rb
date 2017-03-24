class EmployeesFirm < ActiveRecord::Base
    belongs_to :employee
    belongs_to :firm
    
end
