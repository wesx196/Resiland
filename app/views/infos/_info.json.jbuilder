json.extract! info, :id, :name, :phone, :address, :created_at, :updated_at
json.url info_url(info, format: :json)
