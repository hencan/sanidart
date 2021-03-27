json.extract! page, :id, :title, :page_content, :visible, :created_at, :updated_at
json.url page_url(page, format: :json)
