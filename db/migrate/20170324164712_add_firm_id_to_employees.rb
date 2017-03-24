class AddFirmIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :firm_id, :string
    add_index :employees, :firm_id
  end
end
