json.extract! comment, :id, :name, :email, :comment, :created_at, :updated_at
json.url comment_url(comment, format: :json)
