json.extract! comment, :id, :comment, :forum_topic, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)