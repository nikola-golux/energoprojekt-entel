class Firm < ActiveRecord::Base
    has_many :employees_firms
    has_many :employees, through: :employees_firms
end
