json.extract! patient, :id, :name, :email, :address, :postcode, :created_at, :updated_at
json.url patient_url(patient, format: :json)
