json.extract! forum, :id, :title, :description, :forum_type, :user_id, :created_at, :updated_at
json.url forum_url(forum, format: :json)