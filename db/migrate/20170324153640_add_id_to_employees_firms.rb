class AddIdToEmployeesFirms < ActiveRecord::Migration
  def change
    add_column :employees_firms, :id, :primary_key
  end
end
