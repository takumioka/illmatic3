json.extract! bulletinboard, :id, :messagecontent, :nickname, :created_at, :updated_at
json.url bulletinboard_url(bulletinboard, format: :json)
