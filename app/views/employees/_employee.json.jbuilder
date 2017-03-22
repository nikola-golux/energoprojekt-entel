json.extract! employee, :id, :Ime, :Prezime, :Zanimanje, :created_at, :updated_at
json.url employee_url(employee, format: :json)