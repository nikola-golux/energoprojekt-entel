class Employee < ActiveRecord::Base
    has_many :employees_firms
    has_many :firms, through: :employees_firms
    accepts_nested_attributes_for :firms
end
