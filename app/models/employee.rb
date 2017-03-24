class Employee < ActiveRecord::Base
    has_many :employees_firms
    has_many :firms, through: :employees_firms
    accepts_nested_attributes_for :firms
    
    validates :ime, :presence => true
    validates :prezime, :presence => true
    validates :zanimanje, :presence => true

    
    after_save :flag_trenutnog_posla
    
    def flag_trenutnog_posla
        # Sva radna mesta radnika smrm
        srmr = EmployeesFirm.where(:employee_id => self.id)
        srmr.each do |f|
            f.flag = false
        end
        EmployeesFirm.create(:employee_id => self.id, :firm_id => self.firm_id, :flag => true)
    end

end
