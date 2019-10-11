json.extract! memo, :id, :user_id, :content, :title, :important, :created_at, :updated_at
json.url memo_url(memo, format: :json)
