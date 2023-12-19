json.extract! sale, :id, :title, :description, :img_url, :price, :created_at, :updated_at
json.url sale_url(sale, format: :json)
