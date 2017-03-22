class CreateJoinTableEmployeesFirms < ActiveRecord::Migration
  def change
    create_join_table :employees, :firms do |t|
      # t.index [:employee_id, :firm_id]
      # t.index [:firm_id, :employee_id]
    end
  end
end
