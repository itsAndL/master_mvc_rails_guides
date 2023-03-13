json.extract! employee, :id, :first_name, :last_name, :phone_nbr, :hire_date, :job, :sex, :created_at, :updated_at
json.url employee_url(employee, format: :json)
