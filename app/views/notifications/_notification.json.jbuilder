json.extract! notification, :id, :title, :message, :sender_id, :receiver_id, :sender_name, :receiver_name, :created_at, :updated_at
json.url notification_url(notification, format: :json)