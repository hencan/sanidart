json.extract! profile, :id, :profile_image, :name, :skills, :whatsapp, :telegram, :email, :facebook, :instagram, :linkedin, :twitter, :youtube, :main, :created_at, :updated_at
json.url profile_url(profile, format: :json)
