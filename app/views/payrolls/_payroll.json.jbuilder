json.extract! payroll, :id, :registration, :name, :jobrole_id, :workspace_id, :admission_date, :admission_type, :status, :created_at, :updated_at
json.url payroll_url(payroll, format: :json)
