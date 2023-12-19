json.extract! new_project, :id, :title, :description, :img_url, :date, :created_at, :updated_at
json.url new_project_url(new_project, format: :json)
