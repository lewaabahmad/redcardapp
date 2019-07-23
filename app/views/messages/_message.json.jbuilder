json.extract! message, :id, :type, :recipient, :created_at, :updated_at
json.url message_url(message, format: :json)
