class Firm < ActiveRecord::Base
    has_many :employees_firms
    has_many :employees, through: :employees_firms
    
    validates :ime_firme, :presence => true, :uniqueness => true
end
