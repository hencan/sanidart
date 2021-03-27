json.extract! post, :id, :post_image, :title, :subtitle, :post_content, :category, :visible, :created_at, :updated_at
json.url post_url(post, format: :json)
