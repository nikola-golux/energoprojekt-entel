class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :ime_firme

      t.timestamps null: false
    end
  end
end
