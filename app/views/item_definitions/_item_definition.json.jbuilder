json.extract! item_definition, :id, :name, :description, :data_type, :data_parent, :created_at, :updated_at
json.url item_definition_url(item_definition, format: :json)
