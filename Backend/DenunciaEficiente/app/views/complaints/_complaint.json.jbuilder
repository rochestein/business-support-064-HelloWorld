json.extract! complaint, :id, :user_id, :incident_id, :police_unit, :location, :date_incident, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
