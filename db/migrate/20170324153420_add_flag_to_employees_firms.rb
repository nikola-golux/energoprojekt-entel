class AddFlagToEmployeesFirms < ActiveRecord::Migration
  def change
    add_column :employees_firms, :flag, :boolean
  end
end
