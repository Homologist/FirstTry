json.extract! document, :id, :title, :author, :created_at, :updated_at
json.url document_url(document, format: :json)
