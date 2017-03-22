class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :Ime
      t.string :Prezime
      t.string :Zanimanje

      t.timestamps null: false
    end
  end
end
