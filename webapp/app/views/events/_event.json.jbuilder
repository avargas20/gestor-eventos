json.extract! event, :id, :name, :category_id, :modality_id, :place, :address, :date_initial, :date_final, :created_at, :updated_at
json.url event_url(event, format: :json)
